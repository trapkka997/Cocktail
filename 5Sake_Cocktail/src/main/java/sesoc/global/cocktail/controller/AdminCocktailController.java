package sesoc.global.cocktail.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

import javax.activation.CommandMap;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import sesoc.global.cocktail.dao.CocktailMapper;
import sesoc.global.cocktail.dao.CocktailRepository;
import sesoc.global.cocktail.vo.Cocktail2;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AdminCocktailController {

	private static final Logger logger = LoggerFactory.getLogger(AdminCocktailController.class);
	@Autowired
	SqlSession session;
	

	/**
	 * Ssimply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "home";
	}

	// 수정및 삭제게시판
	@RequestMapping(value = "/revise", method = RequestMethod.GET)
	public String write(Locale locale, Model model) {

		return "revise";
	}

	// 등록화면
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String enroll(Locale locale, Model model) {

		return "admin";
	}

	// 칵테일 등록하기
	@RequestMapping(value = "/cocktailInsert", method = RequestMethod.GET)
	public String cocktailInsert(Cocktail2 vo) {
		CocktailMapper dao = session.getMapper(CocktailMapper.class);
		int result = dao.cocktailInsert(vo);
		System.out.println(result);

		return "redirect:/admin";

	}

	// 메인화면으로 돌아가기
	@RequestMapping(value = "/back", method = RequestMethod.GET)
	public String screenmain(Locale locale, Model model) {

		return "redirect:/";
	}

	// 수정
	@RequestMapping(value = "/updatecock", method = RequestMethod.GET)
	public String Updatecock(Locale locale, Model model, String cocktailName, HttpSession httpSession) {
		CocktailMapper dao = session.getMapper(CocktailMapper.class);
		System.out.println("칵테일이름" + cocktailName);
		Cocktail2 vo = new Cocktail2();
		vo = dao.selectOne(cocktailName);

		model.addAttribute("Cocktail", vo);
		return "revise";
	}

	// 수정후 메인
	@RequestMapping(value = "/cocktailUpdate", method = RequestMethod.GET)
	public String cocktailUpdate(Locale locale, Model model, Cocktail2 vo, HttpSession httpSession) {
		CocktailMapper dao = session.getMapper(CocktailMapper.class);
		int result = dao.cocktailUpdate(vo);

		return "redirect:/";

	}

	// 칵테일 삭제
	@RequestMapping(value = "/cockDelete", method = RequestMethod.GET)
	public @ResponseBody String cocktailDelete(String cocktailName, HttpSession httpSession) {
		CocktailMapper dao = session.getMapper(CocktailMapper.class);
		int result = dao.cocktailDelete(cocktailName);

		return "success";

	}

	// 칵테일 전체 보여주기
	@RequestMapping(value = "/selectCockList", method = RequestMethod.POST)
	public @ResponseBody ArrayList<Cocktail2> selectCockList() {
		CocktailMapper dao = session.getMapper(CocktailMapper.class);
		ArrayList<Cocktail2> cockList = new ArrayList<>();
		cockList = dao.select();

		System.out.println(cockList.get(0).toString());

		return cockList;

	}
}