package sesoc.global.cocktail.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import org.springframework.web.multipart.MultipartFile;

import sesoc.global.cocktail.dao.MemberRepository;
import sesoc.global.cocktail.test.JsoupExample;
import sesoc.global.cocktail.test.JsoupExample2;
import sesoc.global.cocktail.vo.User;
import sesoc.global.cocktail.vo.UserPhoto;

@Controller
public class HomeController {
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
		model.addAttribute("userPhotos", userPhotos);
		model.addAttribute("path", "http://localhost:8888/cocktail/resources/");
		
		return "cocktail/index-1";
	}

	@RequestMapping(value = "/weather", method = RequestMethod.GET)
	public String weather(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "test/NewFile3";
	}
	@RequestMapping(value = "/newC", method = RequestMethod.GET)
	public String newC(Locale locale, Model model) {
	logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "test/home";
	}
	@RequestMapping(value = "/menu", method = RequestMethod.GET)
	public String tag() {
		return "test/testmenu";
	}
	@RequestMapping(value = "/main2", method = RequestMethod.GET)
	public String main2(Locale locale, Model model) {
		return "test/first+limocon";
	}

	@RequestMapping(value = "/auto", method = RequestMethod.GET)
	public String auto() {
		return "test/outoscroll2";
	}
	@RequestMapping(value = "/instaTest", method = RequestMethod.GET)
	public String instaTest(Locale locale, Model model) {
		JsoupExample2 jsoup = new JsoupExample2();
		ArrayList<String> urls = new ArrayList<>();
		try {
			ArrayList<String> urlList = jsoup.getImg();
			for(String url : urlList) {
				JsoupExample js = new JsoupExample();
				System.out.println(js.getImage(url));
				urls.add(js.getImage(url));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("urls",urls);
		return "test/instaTest";
	}
	@RequestMapping(value = "/sidebar", method = RequestMethod.GET)
	public String sidebar(Locale locale, Model model) {
		return "test/sidebar";
	}
	@RequestMapping(value = "/writeBoard", method = RequestMethod.GET)
	public String writeBoard() {
		return "test/WriteBoard";
	}
	@RequestMapping(value = "/writeBoard", method = RequestMethod.POST)
	public String writeBoard(HttpSession httpSession, UserPhoto vo, MultipartFile fileData,HttpServletRequest servletRequest) {
		System.out.println(vo);
		String originalFileName = fileData.getOriginalFilename();
		UUID uuid = UUID.randomUUID();
		String savedFileName = uuid+"_"+originalFileName;
		String path = servletRequest.getSession().getServletContext().getRealPath("resources/"+savedFileName);
		System.out.println(path);
		File saveFile = new File(path);
		if(!saveFile.exists()) {
			saveFile.mkdirs();
		}
		try { 
			fileData.transferTo(saveFile);
		} catch (IOException e){
			System.out.println(e.getMessage());
			e.printStackTrace(); 
		}
		String userEmail = (String)httpSession.getAttribute("useremail");
		vo.setUserEmail(userEmail);
		vo.setOriginalFileName(originalFileName);
		vo.setSaveFileName(savedFileName);
		System.out.println(vo);
		sqlSession.insert("testMapper.writeBoard",vo);
		return "test/WriteBoard";
	}
	@RequestMapping(value = "/myBoard", method = RequestMethod.GET)
	public String myBoard(HttpSession httpSession, Model model,HttpServletRequest servletRequest) {
		String path = servletRequest.getSession().getServletContext().getRealPath("resources");
		String userEmail = (String)httpSession.getAttribute("useremail");
		List<UserPhoto> userPhoto = sqlSession.selectList("testMapper.getBoard",userEmail);
		for(UserPhoto photo : userPhoto) {
			System.out.println(photo);
			
		}
		model.addAttribute("userPhoto", userPhoto);
		model.addAttribute("path", "resources/");
		return "test/MyBoard";
	}
	@RequestMapping(value = "/test2", method = RequestMethod.GET)
	public String test2() {
		return "test/test2";
	}
	
}
