package sesoc.global.cocktail.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sesoc.global.cocktail.dao.CocktailRepository;
import sesoc.global.cocktail.dao.MemberRepository;
import sesoc.global.cocktail.vo.Cocktail;
import sesoc.global.cocktail.vo.User;
import sesoc.global.cocktail.vo.UserPhoto;

@Controller
public class HomeController {
	@Autowired CocktailRepository cocktailRepository;
	@Autowired SqlSession sqlSession;
	@Autowired MemberRepository dao;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	//메인화면
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model,HttpSession httpSession, User vo,HttpServletRequest servletRequest) {
		String userEmail = (String) httpSession.getAttribute("useremail");
		vo.setUserEmail(userEmail);
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		List<UserPhoto> userPhotos = dao.selectUserPhoto(vo);
		List<Cocktail> cocktailList = cocktailRepository.getCocktailList();
		model.addAttribute("cocktailList", cocktailList);
		model.addAttribute("userPhotos", userPhotos);
		model.addAttribute("path", "http://localhost:8888/cocktail/resources/");
		return "cocktail/index";
	}
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String pro() {
		return "cocktail/index";
	}
	@RequestMapping(value = "/userphoto", method = RequestMethod.GET)
	public String userphoto(Model model, HttpServletRequest servletRequest) {
		List<UserPhoto> userPhotos = dao.selectAllUserPhoto();
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		System.out.println(path);
		model.addAttribute("userPhotos", userPhotos);
		model.addAttribute("path", "http://localhost:8888/cocktail/resources/");
		return "cocktail/gallery";
	}
	@RequestMapping(value = "/cocktailphoto", method = RequestMethod.GET)
	public String cocktailphoto(Model model, HttpServletRequest servletRequest) {
		List<UserPhoto> userPhotos = dao.selectAllUserPhoto();
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		System.out.println(path);
		model.addAttribute("userPhotos", userPhotos);
		model.addAttribute("path", "http://localhost:8888/cocktail/resources/");
		return "cocktail/gallery";
	}
	@RequestMapping(value = "/tag", method = RequestMethod.GET)
	public String tag() {
		return "cocktail/search2";
	}
	@RequestMapping(value = "/selfMaking", method = RequestMethod.GET)
	public String selfMaking() {
		return "cocktail/selfMaking";
	}
}
