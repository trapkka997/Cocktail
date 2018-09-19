package sesoc.global.cocktail.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

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
	public String cocktailDetail(Locale locale, Model model,String cocktailSeq) {
		Cocktail selectCocktail = cocktailRepository.selectCocktail(cocktailSeq);
		model.addAttribute("cocktail", selectCocktail);
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
	@RequestMapping(value = "/cocktailTagSearch", method = RequestMethod.GET)
	public @ResponseBody int cocktailTagSearch(String spilits, String liqueur, String material) {
		//List<Cocktail> cocktailList = cocktailRepositor11y.cocktailTagSearch();
		 
		return 0;
	}
}
