package sesoc.global.cocktail.controller;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import sesoc.global.cocktail.dao.CocktailRepository;
import sesoc.global.cocktail.dao.EmailDAO;
import sesoc.global.cocktail.dao.MemberDAO;
import sesoc.global.cocktail.dao.MemberRepository;
import sesoc.global.cocktail.dao.EmailRepository;
import sesoc.global.cocktail.email.MailHandler;
import sesoc.global.cocktail.email.TempKey;
import sesoc.global.cocktail.test.JsoupExample;
import sesoc.global.cocktail.test.JsoupExample2;
import sesoc.global.cocktail.vo.Cocktail;
import sesoc.global.cocktail.vo.User;
import sesoc.global.cocktail.vo.UserLikeCocktail;

@Controller
public class CocktailController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired CocktailRepository cocktailRepository;
	@Autowired MemberRepository memberRepository;
	
	/**
	 * 移듯뀒�씪 寃��깋�솕硫댁쑝濡� �씠�룞
	 * �솕硫� �븞��
	 * @return search�솕硫� 
	 * @author hangyutae
	 */
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Model model) {
		List<Cocktail> cocktailList = cocktailRepository.getCocktailList();
		model.addAttribute("cocktailList", cocktailList);
		return "imsi/search";
	}	
	
	/**
	 * 移듯뀒�씪 �뵒�뀒�씪 �솕硫댁쑝濡� �씠�룞
	 * @param cocktailSeq 移듯뀒�씪 �떆���뒪
	 * @return 移듯뀒�씪 �뵒�뀒�씪 �솕硫댁쑝濡� �씠�룞
	 * @author hangyutae
	 */
	@RequestMapping(value = "/cocktailDetail", method = RequestMethod.GET)

	/*public String cocktailDetail(Locale locale, Model model,String cocktailname) {
		Cocktail selectCocktail = cocktailRepository.selectCocktail(cocktailname);
		model.addAttribute("cocktail", selectCocktail);*/

	public String cocktailDetail(Locale locale, Model model,String cocktailSeq) {
		Cocktail selectCocktail = cocktailRepository.selectCocktail(cocktailSeq);
		model.addAttribute("cocktail", selectCocktail);
	   
		return "cocktail/cocktailDetail";
	}
	
	/**
	 * 移듯뀒�씪 �뾽濡쒕뱶 �솕硫� �씠�룞
	 * �엫�떆�솕硫�, 湲곕뒫 援ы쁽
	 * @return �솕硫댁씠�룞
	 * @author hangyutae
	 */
	@RequestMapping(value = "/cocktailUpload", method = RequestMethod.GET)
	public String cocktailUpload(Locale locale, Model model, HttpSession httpSession) {
		String userEmail = (String)httpSession.getAttribute("useremail");
		JsoupExample2 jsoup = new JsoupExample2();
		ArrayList<String> urls = new ArrayList<>();
		try {
			ArrayList<String> urlList = jsoup.getImg();
			for(String url : urlList) {
				JsoupExample js = new JsoupExample();
				urls.add(js.getImage(url));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("urls",urls);
		return "cocktail/cocktailUpload";
	}	
	
	/**
	 * 移듯뀒�씪 醫뗭븘�슂 �븯�뒗 湲곕뒫
	 * �쑀��媛� 醫뗭븘�슂 踰꾪듉�쓣 �늻瑜대㈃
	 * �뀒�씠釉� : USERLIKECOCKTAIL -> select ( �쑀��, 移듯뀒�씪seq)
	 * - �엳�쑝硫� : @return 0  �뾾�쑝硫� 諛� 吏꾪뻾
	 * �뀒�씠釉� : COCKTAIL2 -> update ( RECOMMAND = RECOMMAND + 1 )
	 * �뀒�씠釉� : USERLIKECOCKTAIL  ->  insert ( �쑀��, 移듯뀒�씪seq ) 
	 * @param cocktailSeq 移듯뀒�씪 踰덊샇
	 * @return 0 : �씠誘� �쑀��媛� 醫뗭븘�뻽�뜕 移듯뀒�씪 �씪�븣
	 * 		   1 : 醫뗭븘�슂 �꽦怨�
	 * @author hangyutae
	 */
	@RequestMapping(value = "/recommandCocktail", method = RequestMethod.GET)
	public @ResponseBody int recommandCocktail(String cocktailSeq, HttpSession httpSession) {
		String userEmail = (String) httpSession.getAttribute("useremail");
		UserLikeCocktail userLikeCocktail = new UserLikeCocktail();
		userLikeCocktail.setUserEmail(userEmail);
		userLikeCocktail.setUserCocktailSeq(cocktailSeq);
		UserLikeCocktail likeCocktail = memberRepository.selectUserLikeCocktail(userLikeCocktail);
		
		if(likeCocktail !=null) {
			return 0;
		}else {
			cocktailRepository.recommandCocktail(cocktailSeq);
			memberRepository.insertUserLikeCocktail(userLikeCocktail);
			return 1;
		}
	}
	/**
	 * �깭洹멸��깋
	 * �뙆�씪誘명꽣�쓽 媛믪쓣 ('0','0','0') �쑝濡� 諛쏆븘�꽌
	 * 
	 * SELECT *
	 * FROM TABLE
	 * WHERE REGEXP_LIKE(STRING, 'S|T')
	 * ===> 留뚯빟  STRING�씠  (1,2,3), (4,5,6) �씠怨� ('S|T')媛� (2,4) �씤 寃쎌슦
	 * 		2, 4媛� 理쒖냼 �븯�굹�씪�룄 �룷�븿�씠 �릺�뼱 �엳�뒗 �몮 �떎 異쒕젰�맖. 
	 * 
	 * 
	 * @param spilits '0' :  湲곕낯踰좎씠�뒪
	 * @param liqueur '0' : 由ы걧瑜�
	 * @param material '0' : 遺��옱猷�
	 * @return 
	 */
	@RequestMapping(value = "/cocktailTagSearch", method = RequestMethod.POST)
	public @ResponseBody ArrayList<Cocktail> cocktailTagSearch(String color, String[] spilits, String[] liqueur,String[] material, int num) {
		String regexp = "";
		String s="";
		color += "Color";
		System.out.println("�깋源� : "+ color);
		if(spilits != null) {
			for(String sTemp : spilits) {
				s+= sTemp;
				if(spilits[spilits.length-1].equals(sTemp)) {
					
				}else {
					s+= "|";	
				}
			}
		}
		System.out.println("s, request  : " + s);
		String l = "";
		if(liqueur != null) {
			for(String lTemp : liqueur) {
				l+= lTemp;
				if(liqueur[liqueur.length-1].equals(lTemp)) {
					
				}else {
					l+= "|";	
				}
			}
		}
		System.out.println("l, request  : " +l);
		String m = "";		
		
		if(material !=null) {
			for(String mTemp : material) {
				m+= mTemp;
				if(material[material.length-1].equals(mTemp)) {
					
				}else {
					m+= "|";	
				}
			}
		}
		System.out.println("m, request  : " +m);
		if(spilits==null && liqueur==null && material==null) {
			regexp = "|";
		}else if(spilits==null && liqueur==null) {
			regexp = m;
		}else if(liqueur==null && material==null) {
			regexp = s;
		}else if(spilits==null && material==null) {
			regexp =  l;
		}else if(liqueur==null){
			regexp = s + "|" + m;
		}else if(spilits==null) {
			regexp = l + "|" + m;
		}else if(material==null) {
			regexp = s+"|"+l;
		}
		else {
			regexp = s+"|"+l+"|"+m;
		}
		// 1. spilits媛� �뾾�쓣 �븣
		//    | liqueur | material
		// 2. liqueur媛� �뾾�쓣 �븣
		//	  spilits | | material
		// 3. material媛� �뾾�쓣 �븣 
		//	  spilits | liqueur |
		// 4. | | material
		// 5. | liqueur |
		// 6. spilits | |
		// 7. | | |
		
		System.out.println("regexp :: "+regexp);
		HashMap<String, String> map = new HashMap<>();
		map.put("color", color);
		map.put("regexp",regexp);
		List<HashMap<String,BigDecimal>> ingredientOfCocktailList = cocktailRepository.getIngredientOfCocktail(map);
		///////////////////////////////////////
		////////         RESULT	       ////////
		///////////////////////////////////////		
		//		COCKTAIL_SEQ INGREDIENT		 //
		//		------------ ----------		 //
		//			  16	     60			 //
		//			  16	     40			 //
		//			  16	    109			 //
		//			  91	     17			 //
		//			  91	     40 		 //
		//			  91	     60			 //
		//			  91	     79			 //
		//			  96	      9			 //
		//			  96	     67			 //
		//			  96	     84			 //
		//			  99	     68			 //
		//			  99	     75			 //
		//			  99	     78			 //
		///////////////////////////////////////
		
		//input : 60 	  -> 	return : 16, 91
		//input : 60, 109 ->	return : 16
		
		// �븳 �씪�씤 �뵫 �씫�뼱�뱾�뿬�꽌 �엳�뒗寃껊뱾留� 異쒕젰
		// 紐⑤뱺 �씤�뭼 �씪�씤 留뚰겮 諛섎났 �썑
		// 媛숈� �떆���뒪媛믪쓽 媛쒖닔媛� �씤�뭼 媛쒖닔�� 媛숈쑝硫�
		// 寃곌낵 媛� 異쒕젰
		
		// input : 60 >>
		///////////////////////////////////////
		////////         RESULT	       ////////
		///////////////////////////////////////		
		//		COCKTAIL_SEQ INGREDIENT		 //
		//		------------ ----------		 //
		//			  16	     60			 //
		//			  91	     60			 //
		///////////////////////////////////////
		// return : 16, 91
		
		// input 60, 109 >> 
		///////////////////////////////////////
		////////         RESULT	       ////////
		///////////////////////////////////////		
		//		COCKTAIL_SEQ INGREDIENT		 //
		//		------------ ----------		 //
		//			  16	     60			 //
		//			  16	    109			 //
		//			  91	     60			 //
		///////////////////////////////////////
		// return 16
		
		
		// input 60, 109 >> 
		///////////////////////////////////////
		////////         RESULT	       ////////
		///////////////////////////////////////		
		//		COCKTAIL_SEQ COUNT(*)		 //
		//		------------ ----------		 //
		//			  16	     2			 //
		//			  91	     1			 //
		///////////////////////////////////////
		// 留뚯빟 count(*)媛� �씤�뭼 媛쒖닔媛� 3�씪�븣,
		// 洹� 媛믪쓣 由ы꽩
		
		ArrayList<Cocktail> tempCockList = new ArrayList<Cocktail>();
		for(HashMap<String,BigDecimal> ingredient: ingredientOfCocktailList) {
			System.out.println("COUNT = "+ingredient.get("COUNT"));
			if(ingredient.get("COUNT").intValue() >= num ) {
				Cocktail tempCock = cocktailRepository.selectCocktail(ingredient.get("COCKTAIL_SEQ").toString());
				tempCockList.add(tempCock);
			}
			
		}
		
		return tempCockList;
	}
	
	@RequestMapping(value = "/getCocktail", method = RequestMethod.POST)
	public @ResponseBody List<Cocktail> getCocktail() {
		List<Cocktail> result = cocktailRepository.getCocktailList();
		for(Cocktail c : result) {
			String ingre = c.getIngredient();			
		}
	 return result;
	}
}