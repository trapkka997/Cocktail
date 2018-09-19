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
import sesoc.global.cocktail.vo.Ingredient;
import sesoc.global.cocktail.vo.User;
import sesoc.global.cocktail.vo.UserPhoto;

@Controller
public class HomeController {
	@Autowired CocktailRepository cocktailRepository;
	@Autowired MemberRepository memberRepository;
	@Autowired SqlSession sqlSession;
	@Autowired MemberRepository dao;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * 메인화면
	 * @param vo USER[]
	 * @return 메인화면 이동
	 * @author hangyutae
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model,HttpSession httpSession, User vo,HttpServletRequest servletRequest) {
		String userEmail = (String) httpSession.getAttribute("useremail");
		vo.setUserEmail(userEmail);
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		List<UserPhoto> userPhotos = dao.selectUserPhoto(vo);
		List<Cocktail> cocktailList = cocktailRepository.getCocktailList();
		for(Cocktail c : cocktailList) {
			String ingre = c.getIngredient();
			
		}
		List<Cocktail> recommandCocktailList = cocktailRepository.getRecommandCocktailList();
		List<UserPhoto> recommandUserPhotoList = memberRepository.getRecommandUserPhotoList();
		List<Ingredient> ingredientByAlcoleList = cocktailRepository.getIngredientByAlcole();
		List<Ingredient> ingredientByFruitList = cocktailRepository.getIngredientByFruit();
		List<Ingredient> ingredientByLiqueurList = cocktailRepository.getIngredientByLiqueur();
		List<Ingredient> ingredientByMaterialList = cocktailRepository.getIngredientByMaterial();
		model.addAttribute("ingredientByAlcoleList", ingredientByAlcoleList);
		model.addAttribute("ingredientByFruitList", ingredientByFruitList);
		model.addAttribute("ingredientByLiqueurList", ingredientByLiqueurList);
		model.addAttribute("ingredientByMaterialList", ingredientByMaterialList);
		System.out.println(recommandCocktailList);
		System.out.println(recommandUserPhotoList);
		model.addAttribute("recommandUserPhotoList", recommandUserPhotoList);
		model.addAttribute("recommandCocktailList", recommandCocktailList);
		model.addAttribute("cocktailList", cocktailList);
		model.addAttribute("userPhotos", userPhotos);
		model.addAttribute("path", "http://localhost:8888/cocktail/resources/");
		return "cocktail/index";
	}
	
	/**
	 * 인덱스로 이동
	 * 안쓰는 화면
	 * @return
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String pro() {
		return "cocktail/main_index";
	}
	
	/**
	 * 인덱스로 이동
	 * 안쓰는 화면
	 * @return
	 */
	@RequestMapping(value = "/main_p", method = RequestMethod.GET)
	public String imsi() {
		return "cocktail/main";
	}
	
	/**
	 * 유저들이 올린 사진을 볼 수 있는 라이브러리 화면
	 * @return 유저 라이브러리 화면
	 */
	@RequestMapping(value = "/userphoto", method = RequestMethod.GET)
	public String userphoto(Model model, HttpServletRequest servletRequest) {
		List<UserPhoto> userPhotos = dao.selectAllUserPhoto();
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		System.out.println(path);
		List<Cocktail> cocktailList = cocktailRepository.getCocktailList();
		model.addAttribute("cocktailList", cocktailList);
		model.addAttribute("userPhotos", userPhotos);
		model.addAttribute("path", "http://localhost:8888/cocktail/resources/");
		return "cocktail/gallery/user_gallery";
	}
	
	/**
	 * 유저들의 올린 칵테일 라이브러리 화면
	 * @return 칵테일화면
	 */
	@RequestMapping(value = "/cocktailphoto", method = RequestMethod.GET)
	public String cocktailphoto(Model model, HttpServletRequest servletRequest) {
		List<UserPhoto> userPhotos = dao.selectAllUserPhoto();
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		System.out.println(path);
		model.addAttribute("userPhotos", userPhotos);
		model.addAttribute("path", "http://localhost:8888/cocktail/resources/");
		return "cocktail/gallery/cocktail_gallery";
	}
	
	/**
	 * 검색화면
	 * 현재 사용 안함
	 * @return
	 */
	@RequestMapping(value = "/tag", method = RequestMethod.GET)
	public String tag(Model model) {
		List<Cocktail> cocktailList = cocktailRepository.getCocktailList();
		List<Ingredient> ingredientByAlcoleList = cocktailRepository.getIngredientByAlcole();
		List<Ingredient> ingredientByFruitList = cocktailRepository.getIngredientByFruit();
		List<Ingredient> ingredientByLiqueurList = cocktailRepository.getIngredientByLiqueur();
		List<Ingredient> ingredientByMaterialList = cocktailRepository.getIngredientByMaterial();
		model.addAttribute("ingredientByAlcoleList", ingredientByAlcoleList);
		model.addAttribute("ingredientByFruitList", ingredientByFruitList);
		model.addAttribute("ingredientByLiqueurList", ingredientByLiqueurList);
		model.addAttribute("ingredientByMaterialList", ingredientByMaterialList);
		model.addAttribute("cocktailList", cocktailList);
		return "imsi/search2";
	}
	
	/**
	 * 유저가 올린 칵테일을 확인하는 화면이동
	 * @param vo
	 * @return
	 */
	@RequestMapping(value = "/selfMaking", method = RequestMethod.GET)
	public String selfMaking(Model model, User vo) {
//		List<UserCocktail> userCocktailList =  cocktailRepository.selectUserCocktail(vo);
//		model.addAttribute("userCocktailList", userCocktailList);
		return "cocktail/gallery/selfMaking";
	}
	
	/**
	 * 메인화면이동
	 * 현재 사용안함
	 * @return
	 */
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
		return "cocktail/main";
	}
	
	/**
	 * 추천칵테일로 이동
	 * @return
	 */
	@RequestMapping(value = "/recommend", method = RequestMethod.GET)
	public String recommend() {
		return "cocktail/recommend";
	}
	
	/**
	 * 유저 이메일을 받아서 유저 정보와 유저가 적은  userPhoto를 들고온다.
	 * 유저포토로 화면에 뿌려주면 됨.
	 * 유저 개인 라이브러리로 이동
	 * @param model
	 * @param vo USER[userEmail]
	 * @return
	 */
	@RequestMapping(value = "/eachoneProfile", method = RequestMethod.GET)
	public String eachoneprofile(Model model, User vo) {
		User user = dao.selectOne(vo);
		List<UserPhoto> photoList = dao.selectUserPhoto(vo);
		String followNum = dao.getUserFollowNum(vo);
		String followerNum = dao.getUserFollowerNum(vo);
		String postNum = dao.selectUserPhotoNum(vo);
		model.addAttribute("user", user);
		model.addAttribute("postNum", postNum);
		model.addAttribute("followNum", followNum);
		model.addAttribute("followerNum", followerNum);
		model.addAttribute("path", "http://localhost:8888/cocktail/resources/");
		model.addAttribute("photoList", photoList);
		return "user/eachoneProfile";
	}
	
	/**
	 * 칵테일 갤러리로 이동
	 * 현재사용안함
	 * @return
	 */
	@RequestMapping(value = "/cock_gallery_body", method = RequestMethod.GET)
	public String cock_gallery_body() {
		return "cocktail/gallery/cocktail_gallery";
	}
	
	/**
	 * 유저가 올린 칵테일 정보화면
	 * 현재 사용 안함
	 * @return
	 */
	@RequestMapping(value = "/self_Making_body", method = RequestMethod.GET)
	public String self_Making_body() {
		return "cocktail/gallery/selfMaking";
	}
	
	/**
	 * 유저 갤러리로 이동
	 * 현재 사용안함
	 * @return
	 */
	@RequestMapping(value = "/user_gallery_body", method = RequestMethod.GET)
	public String user_gallery_body() {
		return "cocktail/gallery/user_gallery";
	}
	
}

