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
	 * 칵테일 검색화면으로 이동
	 * 화면 안씀
	 * @return search화면 
	 * @author hangyutae
	 */
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Model model) {
		List<Cocktail> cocktailList = cocktailRepository.getCocktailList();
		model.addAttribute("cocktailList", cocktailList);
		return "imsi/search";
	}	
	
	/**
	 * 칵테일 디테일 화면으로 이동
	 * @param cocktailSeq 칵테일 시퀀스
	 * @return 칵테일 디테일 화면으로 이동
	 * @author hangyutae
	 */
	@RequestMapping(value = "/cocktailDetail", method = RequestMethod.GET)
<<<<<<< HEAD
	public String cocktailDetail(Locale locale, Model model,String cocktailname) {
		/*Cocktail selectCocktail = cocktailRepository.selectCocktail(cocktailname);
		model.addAttribute("cocktail", selectCocktail);*/
=======
	public String cocktailDetail(Locale locale, Model model,String cocktailSeq) {
		Cocktail selectCocktail = cocktailRepository.selectCocktail(cocktailSeq);
		model.addAttribute("cocktail", selectCocktail);
	    	
>>>>>>> branch 'master' of https://github.com/trapkka997/Cocktail
		return "cocktail/cocktailDetail";
	}
	
	/**
	 * 칵테일 업로드 화면 이동
	 * 임시화면, 기능 구현
	 * @return 화면이동
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
	 * 칵테일 좋아요 하는 기능
	 * 유저가 좋아요 버튼을 누르면
	 * 테이블 : USERLIKECOCKTAIL -> select ( 유저, 칵테일seq)
	 * - 있으면 : @return 0  없으면 밑 진행
	 * 테이블 : COCKTAIL2 -> update ( RECOMMAND = RECOMMAND + 1 )
	 * 테이블 : USERLIKECOCKTAIL  ->  insert ( 유저, 칵테일seq ) 
	 * @param cocktailSeq 칵테일 번호
	 * @return 0 : 이미 유저가 좋아했던 칵테일 일때
	 * 		   1 : 좋아요 성공
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
	 * 태그검색
	 * 파라미터의 값을 ('0','0','0') 으로 받아서
	 * 
	 * SELECT *
	 * FROM TABLE
	 * WHERE REGEXP_LIKE(STRING, 'S|T')
	 * ===> 만약  STRING이  (1,2,3), (4,5,6) 이고 ('S|T')가 (2,4) 인 경우
	 * 		2, 4가 최소 하나라도 포함이 되어 있는 둘 다 출력됨. 
	 * 
	 * 
	 * @param spilits '0' :  기본베이스
	 * @param liqueur '0' : 리큐르
	 * @param material '0' : 부재료
	 * @return 
	 */
	@RequestMapping(value = "/cocktailTagSearch", method = RequestMethod.POST)
	public @ResponseBody ArrayList<Cocktail> cocktailTagSearch(String color, String[] spilits, String[] liqueur,String[] material, int num) {
		String regexp = "";
		String s="";
		color += "Color";
		System.out.println("색깔 : "+ color);
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
		// 1. spilits가 없을 때
		//    | liqueur | material
		// 2. liqueur가 없을 때
		//	  spilits | | material
		// 3. material가 없을 때 
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
		
		// 한 라인 씩 읽어들여서 있는것들만 출력
		// 모든 인풋 라인 만큼 반복 후
		// 같은 시퀀스값의 개수가 인풋 개수와 같으면
		// 결과 값 출력
		
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
		// 만약 count(*)가 인풋 개수가 3일때,
		// 그 값을 리턴
		
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