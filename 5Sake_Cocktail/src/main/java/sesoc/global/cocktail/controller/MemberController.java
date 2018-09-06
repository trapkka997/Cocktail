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
import org.springframework.web.bind.annotation.ResponseBody;

import sesoc.global.cocktail.dao.MemberDAO;
import sesoc.global.cocktail.dao.MemberRepository;
import sesoc.global.cocktail.vo.User;
import sesoc.global.cocktail.vo.UserPhoto;

@Controller
public class MemberController {
	
	@Autowired MemberRepository dao;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

		// 로그인후 화면 이동
		@RequestMapping(value = "/login", method = RequestMethod.POST)
		public String login(Locale locale, Model model, User vo, HttpSession httpSession) {
			System.out.println(vo);
			User login = dao.selectOne(vo);
			if (login != null) {
				if(login.getUserAuth().equalsIgnoreCase("Y")) {
					httpSession.setAttribute("useremail", login.getUserEmail());
					System.out.println("로그인 완료!!");
				}else if(login.getUserAuth().equalsIgnoreCase("N")) {
					System.out.println("이메일 인증 필요함");
					return "user/notAuth";
				}
				
				return "redirect:/";
			} else {
				return "user/loginFail";
			}

		}
		
		@RequestMapping(value = "/loginAjax", method = RequestMethod.POST)
		public @ResponseBody String loginAjax(Locale locale, Model model, User vo, HttpSession httpSession) {
			System.out.println(vo);
			User login = dao.selectOne(vo);
			if (login != null) {
				if(login.getUserAuth().equalsIgnoreCase("Y")) {
					httpSession.setAttribute("useremail", login.getUserEmail());
					return "1";
				}else {
					System.out.println("이메일 인증 필요함");
					return "2";
				}
				
			} else {
				return "3";
			}

		}
		// 로그인 리다이렉트
		@RequestMapping(value = "/login", method = RequestMethod.GET)
		public String login() {
			return "user/login";

		}	
		// 로그아웃 기능
		@RequestMapping(value = "/logoutMember", method = RequestMethod.GET)
		public String logout(HttpSession httpSession) {
			httpSession.invalidate();

			return "redirect:/";

		}	
		//개인 사진 라이브러리
		@RequestMapping(value = "/photoLibrary", method = RequestMethod.GET)
		public String photoLibrary(Locale locale,HttpSession httpSession, Model model, User vo,HttpServletRequest servletRequest) {
			String userEmail = (String) httpSession.getAttribute("useremail");
			vo.setUserEmail(userEmail);
			String path = servletRequest.getSession().getServletContext().getRealPath("resources");
			List<UserPhoto> userPhotos = dao.selectUserPhoto(vo);
			model.addAttribute("userPhotos", userPhotos);
			model.addAttribute("path", "http://localhost:8888/cocktail/resources/");
			
			
			return "cocktail/photoLibrary";
		}
}
