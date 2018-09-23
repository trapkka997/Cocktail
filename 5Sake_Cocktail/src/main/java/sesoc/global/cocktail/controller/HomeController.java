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
import sesoc.global.cocktail.vo.UserCocktail;
import sesoc.global.cocktail.vo.UserPhoto;

@Controller
public class HomeController {
	@Autowired CocktailRepository cocktailRepository;
	@Autowired SqlSession sqlSession;
	@Autowired MemberRepository dao;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	//硫붿씤�솕硫�
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
		List<Cocktail> cocktailList = cocktailRepository.getCocktailList();
		model.addAttribute("cocktailList", cocktailList);
		model.addAttribute("userPhotos", userPhotos);
		model.addAttribute("path", "http://localhost:8888/cocktail/resources/");
		return "cocktail/gallery/cocktail_gallery";
	}
	@RequestMapping(value = "/cocktailphoto", method = RequestMethod.GET)
	public String cocktailphoto(Model model, HttpServletRequest servletRequest) {
		List<UserPhoto> userPhotos = dao.selectAllUserPhoto();
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		System.out.println(path);
		model.addAttribute("userPhotos", userPhotos);
		model.addAttribute("path", "http://localhost:8888/cocktail/resources/");
		return "cocktail/gallery/user_gallery";
	}
	@RequestMapping(value = "/tag", method = RequestMethod.GET)
	public String tag() {
		return "cocktail/search2";
	}
	@RequestMapping(value = "/selfMaking", method = RequestMethod.GET)
	public String selfMaking(Model model, User vo) {
//		List<UserCocktail> userCocktailList =  cocktailRepository.selectUserCocktail(vo);
//		model.addAttribute("userCocktailList", userCocktailList);
		return "cocktail/gallery/selfMaking";
	}
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
		return "main";
	}
	@RequestMapping(value = "/recommend", method = RequestMethod.GET)
	public String recommend() {
		return "cocktail/recommend";
	}
	@RequestMapping(value = "/eachoneProfile", method = RequestMethod.GET)
	public String eachoneprofile(Model model, User vo) {
		/*// �쑀�� �씠硫붿씪�쓣 諛쏆븘�꽌 �쑀�� �젙蹂댁� �쑀��媛� �쟻��  userPhoto瑜� �뱾怨좎삩�떎.
		// �쑀���룷�넗濡� �솕硫댁뿉 肉뚮젮二쇰㈃ �맖.
		User user = dao.selectOne(vo);
		List<UserPhoto> photoList = dao.selectUserPhoto(vo);
		String followNum = dao.getUserFollowNum(vo);
		String postNum = dao.selectUserPhotoNum(vo);
		model.addAttribute("user", user);
		model.addAttribute("postNum", postNum);
		model.addAttribute("followNum", followNum);
		model.addAttribute("path", "http://localhost:8888/cocktail/resources/");
		model.addAttribute("photoList", photoList);*/
		return "user/eachoneProfile";
	}
	
	@RequestMapping(value = "/modal", method = RequestMethod.GET)
	public String modal() {
		
		return "cocktail/gallery/modal/modal";
	}
	
}
