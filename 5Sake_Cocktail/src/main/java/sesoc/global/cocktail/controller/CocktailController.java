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
import sesoc.global.cocktail.dao.EmailRepository;
import sesoc.global.cocktail.email.MailHandler;
import sesoc.global.cocktail.email.TempKey;
import sesoc.global.cocktail.test.JsoupExample;
import sesoc.global.cocktail.test.JsoupExample2;
import sesoc.global.cocktail.vo.Cocktail;
import sesoc.global.cocktail.vo.User;

@Controller
public class CocktailController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired CocktailRepository cocktailRepository;
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Model model) {
		List<Cocktail> cocktailList = cocktailRepository.getCocktailList();
		model.addAttribute("cocktailList", cocktailList);
		return "cocktail/search";
	}	

	@RequestMapping(value = "/cocktailDetail", method = RequestMethod.GET)
	public String cocktailDetail(Locale locale, Model model,String cocktailseq) {
		Cocktail selectCocktail = cocktailRepository.selectCocktail(cocktailseq);
		model.addAttribute("cocktail", selectCocktail);
		return "cocktail/cocktailDetail";
	}
	@RequestMapping(value = "/cocktailUpload", method = RequestMethod.GET)
	public String cocktailUpload(Locale locale, Model model,String cocktailname, HttpSession httpSession) {
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

}
