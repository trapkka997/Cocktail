package sesoc.global.cocktail.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
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
import org.springframework.web.multipart.MultipartHttpServletRequest;

import sesoc.global.cocktail.dao.userCocktailDAO;
import sesoc.global.cocktail.dao.userCocktailRepository;
import sesoc.global.cocktail.vo.Cocktail;
import sesoc.global.cocktail.vo.UserCocktail;
import sesoc.global.cocktail.vo.UserPhotoLike;


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

		return "usercocktail/userindex";
	}

	@RequestMapping(value = "/userrevise", method = RequestMethod.GET)
	public String userwrite(Locale locale, Model model) {

		return "usercocktail/userrevise";
	}

	// 등록화면
	@RequestMapping(value = "/useradmin", method = RequestMethod.GET)
	public String userenroll(Locale locale, Model model) {

		return "usercocktail/useradmin";
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
		return "usercocktail/userrevise";
	}

	// 수정후 메인
	@RequestMapping(value = "/usercocktailUpdate", method = RequestMethod.POST)
	public String usercocktailUpdate(Locale locale, Model model, UserCocktail vo, HttpSession httpSession ) {
		
		int result = repository.usercocktailUpdate(vo);
		System.out.println(result);
		return "usercocktail/userindex";

	}

	// 칵테일 눌럿을때 게시글 보여주기
		@RequestMapping(value = "/userboarddetail", method = RequestMethod.GET)
		public String userboarddetail(Locale locale, Model model, String userCocktailSeq, HttpSession httpSession) {
			userCocktailDAO dao = session.getMapper(userCocktailDAO.class);
			dao.userhitcount(Integer.parseInt(userCocktailSeq));
			UserCocktail result = dao.userselectOne(userCocktailSeq);
			model.addAttribute("usercocktail", result);
			return "usercocktail/userboarddetail";

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


		return cockList;

	}
	
	// 만든 칵테일
	@RequestMapping(value = "/usermyselect", method = RequestMethod.POST)
	public @ResponseBody ArrayList<UserCocktail> usermyselect(String userEmail) {
		ArrayList<UserCocktail> cockList = new ArrayList<>();
		cockList = repository.usermyselect(userEmail);


		return cockList;

	}
	

	// 등록 & 업로드
	@RequestMapping(value = "/usercocktailInsert", method = RequestMethod.POST )
		public String usercocktailInsert(MultipartHttpServletRequest multipartRequest
		        ,UserCocktail vo, HttpSession httpSession
		        , Model model, HttpServletRequest servletRequest) throws Exception {
		String userEmail = (String) httpSession.getAttribute("useremail");
		Iterator<String> itr = multipartRequest.getFileNames();
		if(itr.hasNext()) {
			MultipartFile mpf = multipartRequest.getFile(itr.next());
			System.out.println(mpf.getOriginalFilename() +" uploaded!"); 
			String originalFilename = mpf.getOriginalFilename();
			UUID uuid = UUID.randomUUID();
			String saveFilename=uuid+"_"+originalFilename;
			String jsonPath = servletRequest.getSession().getServletContext().getRealPath("/resources/"+saveFilename);
			System.out.println(jsonPath);
			File saveFile = new File(jsonPath);
			vo.setOriginalfilename(originalFilename);
			vo.setSavefilename(saveFilename);
			vo.setUseremail(userEmail);
			try { 
				mpf.transferTo(saveFile);
				repository.usercocktailInsert(vo);
			} catch (IOException e){
				System.out.println(e.getMessage());
				e.printStackTrace(); 
			}
		}
	
		             
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
		System.out.println(userCocktailSeq);
		userCocktailDAO dao = session.getMapper(userCocktailDAO.class);
		
		int result = dao.userlike(userCocktailSeq);

		if(result==1) {
			return "success";
		}else {
			return "fail";
		}
	}
	//좋아요
	@RequestMapping(value = "/userlikephoto", method = RequestMethod.GET)
	public @ResponseBody String userlikephoto(UserPhotoLike vo,HttpSession httpSession) {
		userCocktailDAO dao = session.getMapper(userCocktailDAO.class);
		String userEmail = (String)httpSession.getAttribute("useremail");
		vo.setUserEmail(userEmail);
		int result = dao.UserPhotoLikeInsert(vo);
		dao.insertUserLikePhoto(vo);
		if(result==1) {
			return "success";
		}else {
			return "fail";
		}
	}
}
