package sesoc.global.cocktail.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Locale;
import java.util.UUID;

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

import sesoc.global.cocktail.dao.userCocktailDAO;
import sesoc.global.cocktail.dao.userCocktailRepository;
import sesoc.global.cocktail.vo.UserCocktail;


@Controller
public class UserCocktailController {

	private static final Logger logger = LoggerFactory.getLogger(UserCocktailController.class);
	@Autowired
	SqlSession session;
	@Autowired
	userCocktailRepository repository ;
	

	/**
	 * Ssimply selects the home view to render by returning its name.
	 */
// 여기서 부터 유저 입니다 수정및 삭제게시판gotousermode
	@RequestMapping(value = "/gotousermode", method = RequestMethod.GET)
	public String gotousermode(Locale locale, Model model) {

		return "userindex";
	}

	@RequestMapping(value = "/userrevise", method = RequestMethod.GET)
	public String userwrite(Locale locale, Model model) {

		return "userrevise";
	}

	// 등록화면
	@RequestMapping(value = "/useradmin", method = RequestMethod.GET)
	public String userenroll(Locale locale, Model model) {

		return "useradmin";
	}

	// 메인화면으로 돌아가기
	@RequestMapping(value = "/userback", method = RequestMethod.GET)
	public String userscreenmain(Locale locale, Model model) {

		return "redirect:/";
	}

	// 수정
	@RequestMapping(value = "/userupdatecock", method = RequestMethod.GET)
	public String userUpdatecock(Locale locale, Model model, String userCocktailSeq, HttpSession httpSession) {
		
		UserCocktail vo =repository.userselectOne(userCocktailSeq);
		System.out.println(vo);
		model.addAttribute("userCocktail", vo);
		return "userrevise";
	}

	// 수정후 메인
	@RequestMapping(value = "/usercocktailUpdate", method = RequestMethod.POST)
	public String usercocktailUpdate(Locale locale, Model model, UserCocktail vo, HttpSession httpSession ) {
		
		int result = repository.usercocktailUpdate(vo);
		System.out.println(result);
		return "userindex";

	}

	// 칵테일 눌럿을때 게시글 보여주기
		@RequestMapping(value = "/userboarddetail", method = RequestMethod.GET)
		public String userboarddetail(Locale locale, Model model, String userCocktailSeq, HttpSession httpSession) {
			userCocktailDAO dao = session.getMapper(userCocktailDAO.class);
			dao.userhitcount(Integer.parseInt(userCocktailSeq));
			UserCocktail result = dao.userselectOne(userCocktailSeq);
			model.addAttribute("usercocktail", result);
			return "userboarddetail";

		}
	
	// 칵테일 삭제
	@RequestMapping(value = "/usercockDelete", method = RequestMethod.GET)
	public @ResponseBody String usercocktailDelete(String userCocktailSeq, HttpSession httpSession) {
		userCocktailDAO dao = session.getMapper(userCocktailDAO.class);
		int result = dao.usercocktailDelete(userCocktailSeq);

		return "success";

	}

	// 칵테일 전체 보여주기
	@RequestMapping(value = "/userselectCockList", method = RequestMethod.POST)
	public @ResponseBody ArrayList<UserCocktail> userselectCockList() {
		ArrayList<UserCocktail> cockList = new ArrayList<>();
		cockList = repository.userselect();

		System.out.println(cockList.get(0).toString());

		return cockList;

	}

	// 등록 & 업로드
	@RequestMapping(value = "/usercocktailInsert", method = RequestMethod.POST )
		public String usercocktailInsert(@RequestParam("uploadFile") MultipartFile file
		        ,HttpServletRequest request,UserCocktail vo
		        , Model model, HttpServletRequest servletRequest) throws Exception {
			String userEmail = "email@eami.com";
			userCocktailDAO mapper = session.getMapper(userCocktailDAO.class);
			 String originalFilename = file.getOriginalFilename();
			 vo.setOriginalfilename(originalFilename);
			 UUID uuid = UUID.randomUUID();
			 String saveFilename = uuid + "_" + originalFilename;
			 vo.setSavefilename(saveFilename);
			 vo.setUseremail(userEmail);
			 int result = mapper.usercocktailInsert(vo);
			 String path = servletRequest.getSession().getServletContext().getRealPath("/resources/"+saveFilename);
			 System.out.println(path);
		     File f = new File(path);
		     if(!f.exists()) {
		    	 System.out.println("aaa");
		    	 f.mkdirs();
		     }
		     file.transferTo(f);
		             
		    return "redirect:/gotousermode";
		}

/*	// 조회수
	@RequestMapping(value = "/userhitcock", method = RequestMethod.GET)
		public @ResponseBody String userhitcount(int userCocktailSeq,Model model) {
			userCocktailMapper dao = session.getMapper(userCocktailMapper.class);
			int result = dao.userhitcount(userCocktailSeq);
			model.addAttribute("usercocktail", result);
			if(result==1) {
				return "success";
			}else {
				return "fail";
			}
		}
	*/
	
	//좋아요
	@RequestMapping(value = "/userlikecock", method = RequestMethod.GET)
	public @ResponseBody String userlikecock(int userCocktailSeq) {
		userCocktailDAO dao = session.getMapper(userCocktailDAO.class);
		
		int result = dao.userlike(userCocktailSeq);

		if(result==1) {
			return "success";
		}else {
			return "fail";
		}
	}
}
