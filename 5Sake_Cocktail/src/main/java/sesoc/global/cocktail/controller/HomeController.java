package sesoc.global.cocktail.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;

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
import org.springframework.web.bind.annotation.ResponseBody;

import sesoc.global.cocktail.dao.CocktailRepository;
import sesoc.global.cocktail.dao.MemberRepository;
import sesoc.global.cocktail.test.JsoupExample;
import sesoc.global.cocktail.test.JsoupExample2;
import sesoc.global.cocktail.vo.Cocktail;
import sesoc.global.cocktail.vo.Ingredient;
import sesoc.global.cocktail.vo.User;
import sesoc.global.cocktail.vo.UserCocktail;
import sesoc.global.cocktail.vo.UserPhoto;
import sesoc.global.cocktail.vo.WorldBest;

@Controller
public class HomeController {
	@Autowired CocktailRepository cocktailRepository;
	@Autowired MemberRepository memberRepository;
	@Autowired SqlSession sqlSession;
	@Autowired MemberRepository dao;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class); 
	private static final String PATH = "http://10.10.8.165:8888/cocktail/resources/";
	
	/**
	 * 고정 메뉴 
	 */ 
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpSession httpSession) {
		List<WorldBest> worldBestList = cocktailRepository.selectWorldBest();
		System.out.println(worldBestList);
		for(WorldBest world : worldBestList) {
			System.out.println(world.getCocktailSeq());
		}
		ArrayList<WorldBest> worldBestList1[] =new ArrayList[3];
		for(int i=0; i<3; i++) {
			worldBestList1[i] = new ArrayList<>();
		}
		String seq = worldBestList.get(0).getCocktailSeq();
		int x =0;
		for(WorldBest world : worldBestList) {
			if(!seq.equals(world.getCocktailSeq())) {
				seq= world.getCocktailSeq();
				x++;
			}
			worldBestList1[x].add(world);
		}
		String userEmail = (String)httpSession.getAttribute("useremail");
		User vo = new User();
		vo.setUserEmail(userEmail);
		User user = memberRepository.selectOne(vo);
		model.addAttribute("worldBestList", worldBestList1);
		model.addAttribute("path",PATH);
		model.addAttribute("user",user);
		return "cocktail/main_index";
	}
	
	/**
	 * 메인화면
	 * @param vo USER[]
	 * @return 메인화면 이동
	 * @author hangyutae
	 */
	@RequestMapping(value = "/main_p", method = RequestMethod.GET)
	public String imsi(Locale locale, Model model,HttpSession httpSession, User vo,HttpServletRequest servletRequest) {
		String userEmail = (String) httpSession.getAttribute("useremail");
		vo.setUserEmail(userEmail);
		List<UserPhoto> userPhotos = dao.selectUserPhoto(vo);
		
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
		model.addAttribute("path", PATH);
		return "cocktail/main_body";
	}
	
	/**
	 * 유저들이 올린 사진을 볼 수 있는 라이브러리 화면
	 * @return 유저 라이브러리 화면
	 */
	@RequestMapping(value = "/userphoto", method = RequestMethod.GET)
	public String userphoto(Model model, HttpServletRequest servletRequest) {
		Map map = new HashMap<>();
		List<UserPhoto> userPhotos = dao.selectAllUserPhoto(map);
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		System.out.println(path);
		List<Cocktail> cocktailList = cocktailRepository.getCocktailList();
		model.addAttribute("cocktailList", cocktailList);
		model.addAttribute("userPhotos", userPhotos);
		model.addAttribute("path", PATH);
 
		return "cocktail/gallery/user_gallery";
 
		/*return "cocktail/gallery/user_gallery";
 */
	}
	
	/**
	 * 유저들의 올린 칵테일 라이브러리 화면
	 * @return 칵테일화면
	 */
	@RequestMapping(value = "/cocktailphoto", method = RequestMethod.GET)
	public String cocktailphoto(Model model,HttpSession httpSession, HttpServletRequest servletRequest) {
		Map map = new HashMap<>();
		List<UserPhoto> userPhotos = dao.selectAllUserPhoto(map);
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		System.out.println(path);
		model.addAttribute("userPhotos", userPhotos);
		System.out.println(userPhotos);
		model.addAttribute("path", PATH);
		
		String userEmail = (String)httpSession.getAttribute("useremail");
		return "cocktail/gallery/cocktail_gallery";
	}
	
	/**
	 * 유저들의 올린 칵테일 All 라이브러리 화면
	 * @return 칵테일화면
	 */
	@RequestMapping(value = "/cocktailphotoAll", method = RequestMethod.GET)
	public String cocktailphotoAll(Model model,HttpSession httpSession, HttpServletRequest servletRequest,String data) {
		Map map = new HashMap<>();
		List<UserPhoto> userPhotos = dao.selectAllUserPhoto(map);
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		System.out.println(path);
		model.addAttribute("userPhotos", userPhotos);
		System.out.println(userPhotos);
		model.addAttribute("path", PATH);
		
		String userEmail = (String)httpSession.getAttribute("useremail");
		return "cocktail/gallery/cocktail_gallery";
	}
	/**
	 * 유저들의 올린 칵테일 브랜디 라이브러리 화면
	 * @return 칵테일화면
	 */
	@RequestMapping(value = "/cocktailphotoB", method = RequestMethod.GET)
	public String cocktailphotoB(Model model,HttpSession httpSession, HttpServletRequest servletRequest,String data) {
		data = "AB";
		Map<String, String> map = new HashMap<>();
		map.put("data", data);
		List<UserPhoto> userPhotos = dao.selectAllUserPhoto(map);
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		System.out.println(path);
		model.addAttribute("userPhotos", userPhotos);
		System.out.println(userPhotos);
		model.addAttribute("path", PATH);
		
		String userEmail = (String)httpSession.getAttribute("useremail");
		return "cocktail/gallery/cocktail_gallery";
	}
	/**
	 * 유저들의 올린 칵테일 All 라이브러리 화면
	 * @return 칵테일화면
	 */
	@RequestMapping(value = "/cocktailphotoW", method = RequestMethod.GET)
	public String cocktailphotoW(Model model,HttpSession httpSession, HttpServletRequest servletRequest) {
		String data = "AW";
		Map<String, String> map = new HashMap<>();
		map.put("data", data);
		List<UserPhoto> userPhotos = dao.selectAllUserPhoto(map);
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		System.out.println(path);
		model.addAttribute("userPhotos", userPhotos);
		System.out.println(userPhotos);
		model.addAttribute("path", PATH);
		
		String userEmail = (String)httpSession.getAttribute("useremail");
		return "cocktail/gallery/cocktail_gallery";
	}
	/**
	 * 유저들의 올린 칵테일 All 라이브러리 화면
	 * @return 칵테일화면
	 */
	@RequestMapping(value = "/cocktailphotoV", method = RequestMethod.GET)
	public String cocktailphotoV(Model model,HttpSession httpSession, HttpServletRequest servletRequest) {
		String data = "AV";
		Map<String, String> map = new HashMap<>();
		map.put("data", data);
		List<UserPhoto> userPhotos = dao.selectAllUserPhoto(map);
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		System.out.println(path);
		model.addAttribute("userPhotos", userPhotos);
		System.out.println(userPhotos);
		model.addAttribute("path", PATH);
		
		String userEmail = (String)httpSession.getAttribute("useremail");
		return "cocktail/gallery/cocktail_gallery";
	}
	/**
	 * 유저들의 올린 칵테일 All 라이브러리 화면
	 * @return 칵테일화면
	 */
	@RequestMapping(value = "/cocktailphotoR", method = RequestMethod.GET)
	public String cocktailphotoR(Model model,HttpSession httpSession, HttpServletRequest servletRequest) {
		String data = "AR";
		Map<String, String> map = new HashMap<>();
		map.put("data", data);
		List<UserPhoto> userPhotos = dao.selectAllUserPhoto(map);
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		System.out.println(path);
		model.addAttribute("userPhotos", userPhotos);
		System.out.println(userPhotos);
		model.addAttribute("path", PATH);
		
		String userEmail = (String)httpSession.getAttribute("useremail");
		return "cocktail/gallery/cocktail_gallery";
	}
	/**
	 * 유저들의 올린 칵테일 All 라이브러리 화면
	 * @return 칵테일화면
	 */
	@RequestMapping(value = "/cocktailphotoJ", method = RequestMethod.GET)
	public String cocktailphotoJ(Model model,HttpSession httpSession, HttpServletRequest servletRequest) {
		String data = "AJ";
		Map<String, String> map = new HashMap<>();
		map.put("data", data);
		List<UserPhoto> userPhotos = dao.selectAllUserPhoto(map);
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		System.out.println(path);
		model.addAttribute("userPhotos", userPhotos);
		System.out.println(userPhotos);
		model.addAttribute("path", PATH);
		
		String userEmail = (String)httpSession.getAttribute("useremail");
		return "cocktail/gallery/cocktail_gallery";
	}
	/**
	 * 유저들의 올린 칵테일 All 라이브러리 화면
	 * @return 칵테일화면
	 */
	@RequestMapping(value = "/cocktailphotoT", method = RequestMethod.GET)
	public String cocktailphotoT(Model model,HttpSession httpSession, HttpServletRequest servletRequest) {
		String data = "AT";
		Map<String, String> map = new HashMap<>();
		map.put("data", data);
		List<UserPhoto> userPhotos = dao.selectAllUserPhoto(map);
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		System.out.println(path);
		model.addAttribute("userPhotos", userPhotos);
		System.out.println(userPhotos);
		model.addAttribute("path", PATH);
		
		String userEmail = (String)httpSession.getAttribute("useremail");
		return "cocktail/gallery/cocktail_gallery";
	}
	
	@RequestMapping(value = "/selectUserPhoto", method = RequestMethod.GET)
	public @ResponseBody List<UserPhoto> selectUserPhoto(HttpSession httpSession, HttpServletRequest servletRequest,String data) {
		Map<String,String> map = new HashMap<>();
		if(!data.equals("")) {
			map.put("data", data);
		}
		List<UserPhoto> userPhotos = dao.selectAllUserPhoto(map);
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		System.out.println(path);
		System.out.println(userPhotos);
		
		String userEmail = (String)httpSession.getAttribute("useremail");
		return userPhotos;
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
	public String selfMaking(Model model, User vo, HttpSession httpSession) {
		List<Ingredient> ingredientByAlcoleList = cocktailRepository.getIngredientByAlcole();
		List<Ingredient> ingredientByFruitList = cocktailRepository.getIngredientByFruit();
		List<Ingredient> ingredientByLiqueurList = cocktailRepository.getIngredientByLiqueur();
		List<Ingredient> ingredientByMaterialList = cocktailRepository.getIngredientByMaterial();
		model.addAttribute("ingredientByAlcoleList", ingredientByAlcoleList);
		model.addAttribute("ingredientByFruitList", ingredientByFruitList);
		model.addAttribute("ingredientByLiqueurList", ingredientByLiqueurList);
		model.addAttribute("ingredientByMaterialList", ingredientByMaterialList);
		model.addAttribute("path", PATH);
		vo = new User();
		List<UserCocktail> userCocktailList =  cocktailRepository.selectUserCocktail(vo);
		System.out.println(userCocktailList);
		model.addAttribute("userCocktailList", userCocktailList);
		return "cocktail/gallery/selfMaking";
	}
	@RequestMapping(value = "/selfMakingB", method = RequestMethod.GET)
	public String selfMakingB(Model model, User vo, HttpSession httpSession) {
		String data = "AB";
		vo.setUserNickname(data);
		List<Ingredient> ingredientByAlcoleList = cocktailRepository.getIngredientByAlcole();
		List<Ingredient> ingredientByFruitList = cocktailRepository.getIngredientByFruit();
		List<Ingredient> ingredientByLiqueurList = cocktailRepository.getIngredientByLiqueur();
		List<Ingredient> ingredientByMaterialList = cocktailRepository.getIngredientByMaterial();
		model.addAttribute("ingredientByAlcoleList", ingredientByAlcoleList);
		model.addAttribute("ingredientByFruitList", ingredientByFruitList);
		model.addAttribute("ingredientByLiqueurList", ingredientByLiqueurList);
		model.addAttribute("ingredientByMaterialList", ingredientByMaterialList);
		model.addAttribute("path", PATH);
		List<UserCocktail> userCocktailList =  cocktailRepository.selectUserCocktail(vo);
		System.out.println(userCocktailList);
		model.addAttribute("userCocktailList", userCocktailList);
		return "cocktail/gallery/selfMaking";
	}
	@RequestMapping(value = "/selfMakingW", method = RequestMethod.GET)
	public String selfMakingW(Model model, User vo, HttpSession httpSession) {
		String data = "AW";
		vo.setUserNickname(data);
		List<Ingredient> ingredientByAlcoleList = cocktailRepository.getIngredientByAlcole();
		List<Ingredient> ingredientByFruitList = cocktailRepository.getIngredientByFruit();
		List<Ingredient> ingredientByLiqueurList = cocktailRepository.getIngredientByLiqueur();
		List<Ingredient> ingredientByMaterialList = cocktailRepository.getIngredientByMaterial();
		model.addAttribute("ingredientByAlcoleList", ingredientByAlcoleList);
		model.addAttribute("ingredientByFruitList", ingredientByFruitList);
		model.addAttribute("ingredientByLiqueurList", ingredientByLiqueurList);
		model.addAttribute("ingredientByMaterialList", ingredientByMaterialList);
		model.addAttribute("path", PATH);
		List<UserCocktail> userCocktailList =  cocktailRepository.selectUserCocktail(vo);
		System.out.println(userCocktailList);
		model.addAttribute("userCocktailList", userCocktailList);
		return "cocktail/gallery/selfMaking";
	}
	@RequestMapping(value = "/selfMakingV", method = RequestMethod.GET)
	public String selfMakingV(Model model, User vo, HttpSession httpSession) {
		String data = "AV";
		vo.setUserNickname(data);
		List<Ingredient> ingredientByAlcoleList = cocktailRepository.getIngredientByAlcole();
		List<Ingredient> ingredientByFruitList = cocktailRepository.getIngredientByFruit();
		List<Ingredient> ingredientByLiqueurList = cocktailRepository.getIngredientByLiqueur();
		List<Ingredient> ingredientByMaterialList = cocktailRepository.getIngredientByMaterial();
		model.addAttribute("ingredientByAlcoleList", ingredientByAlcoleList);
		model.addAttribute("ingredientByFruitList", ingredientByFruitList);
		model.addAttribute("ingredientByLiqueurList", ingredientByLiqueurList);
		model.addAttribute("ingredientByMaterialList", ingredientByMaterialList);
		model.addAttribute("path", PATH);
		List<UserCocktail> userCocktailList =  cocktailRepository.selectUserCocktail(vo);
		System.out.println(userCocktailList);
		model.addAttribute("userCocktailList", userCocktailList);
		return "cocktail/gallery/selfMaking";
	}
	@RequestMapping(value = "/selfMakingR", method = RequestMethod.GET)
	public String selfMakingR(Model model, User vo, HttpSession httpSession) {
		String data = "AR";
		vo.setUserNickname(data);
		List<Ingredient> ingredientByAlcoleList = cocktailRepository.getIngredientByAlcole();
		List<Ingredient> ingredientByFruitList = cocktailRepository.getIngredientByFruit();
		List<Ingredient> ingredientByLiqueurList = cocktailRepository.getIngredientByLiqueur();
		List<Ingredient> ingredientByMaterialList = cocktailRepository.getIngredientByMaterial();
		model.addAttribute("ingredientByAlcoleList", ingredientByAlcoleList);
		model.addAttribute("ingredientByFruitList", ingredientByFruitList);
		model.addAttribute("ingredientByLiqueurList", ingredientByLiqueurList);
		model.addAttribute("ingredientByMaterialList", ingredientByMaterialList);
		model.addAttribute("path", PATH);
		List<UserCocktail> userCocktailList =  cocktailRepository.selectUserCocktail(vo);
		System.out.println(userCocktailList);
		model.addAttribute("userCocktailList", userCocktailList);
		return "cocktail/gallery/selfMaking";
	}
	@RequestMapping(value = "/selfMakingJ", method = RequestMethod.GET)
	public String selfMakingJ(Model model, User vo, HttpSession httpSession) {
		String data = "AJ";
		vo.setUserNickname(data);
		List<Ingredient> ingredientByAlcoleList = cocktailRepository.getIngredientByAlcole();
		List<Ingredient> ingredientByFruitList = cocktailRepository.getIngredientByFruit();
		List<Ingredient> ingredientByLiqueurList = cocktailRepository.getIngredientByLiqueur();
		List<Ingredient> ingredientByMaterialList = cocktailRepository.getIngredientByMaterial();
		model.addAttribute("ingredientByAlcoleList", ingredientByAlcoleList);
		model.addAttribute("ingredientByFruitList", ingredientByFruitList);
		model.addAttribute("ingredientByLiqueurList", ingredientByLiqueurList);
		model.addAttribute("ingredientByMaterialList", ingredientByMaterialList);
		model.addAttribute("path", PATH);
		List<UserCocktail> userCocktailList =  cocktailRepository.selectUserCocktail(vo);
		System.out.println(userCocktailList);
		model.addAttribute("userCocktailList", userCocktailList);
		return "cocktail/gallery/selfMaking";
	}
	@RequestMapping(value = "/selfMakingT", method = RequestMethod.GET)
	public String selfMakingT(Model model, User vo, HttpSession httpSession) {		
		String data = "AT";
		vo.setUserNickname(data);
	
		List<Ingredient> ingredientByAlcoleList = cocktailRepository.getIngredientByAlcole();
		List<Ingredient> ingredientByFruitList = cocktailRepository.getIngredientByFruit();
		List<Ingredient> ingredientByLiqueurList = cocktailRepository.getIngredientByLiqueur();
		List<Ingredient> ingredientByMaterialList = cocktailRepository.getIngredientByMaterial();
		model.addAttribute("ingredientByAlcoleList", ingredientByAlcoleList);
		model.addAttribute("ingredientByFruitList", ingredientByFruitList);
		model.addAttribute("ingredientByLiqueurList", ingredientByLiqueurList);
		model.addAttribute("ingredientByMaterialList", ingredientByMaterialList);
		model.addAttribute("path", PATH);
		List<UserCocktail> userCocktailList =  cocktailRepository.selectUserCocktail(vo);
		System.out.println(userCocktailList);
		model.addAttribute("userCocktailList", userCocktailList);
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
	public String eachoneprofile(Model model, User vo, HttpSession httpSession) {
		String useremail = (String)httpSession.getAttribute("useremail");
		User vo2 = new User();
		vo2.setUserEmail(useremail);
		System.out.println(vo2);
		User user2 = memberRepository.selectOne(vo2);
		model.addAttribute("user2", user2);
		User user = dao.selectOne(vo);
		List<User> followList = dao.viewFollow(vo.getUserEmail());
		List<User> followerList = dao.viewFollower(vo.getUserEmail());
		List<UserPhoto> photoList = dao.selectUserPhoto(vo);
		String followNum = dao.getUserFollowNum(vo);
		String followerNum = dao.getUserFollowerNum(vo);
		String postNum = dao.selectUserPhotoNum(vo);
		model.addAttribute("user", user);
		model.addAttribute("postNum", postNum);
		model.addAttribute("followNum", followNum);
		model.addAttribute("followerNum", followerNum);
		model.addAttribute("path", PATH);
		model.addAttribute("photoList", photoList);
		model.addAttribute("followList", followList);
		model.addAttribute("followerList", followerList);
		return "user/eachoneProfile";
	} 
	
	@RequestMapping(value = "/modal", method = RequestMethod.GET)
	public String modal() {		
		return "cocktail/gallery/modal/modal";
	}	
 
	/**
	 * css테스트용
	 * @return
	 */
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test() {
		return "imsi/test";
	}
	/**
	 * loading
	 * @return
	 */
	@RequestMapping(value = "/loading", method = RequestMethod.GET)
	public String loading() {
		return "loading/loadingPage";
	}
 
}

