package sesoc.global.cocktail.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sesoc.global.cocktail.dao.MemberDAO;
import sesoc.global.cocktail.vo.User;

@Controller
public class MemberController {
	
	@Autowired SqlSession sqlSession;
	//메인
		@RequestMapping(value="/", method = RequestMethod.GET)
		public String home(Model model) {
			return "home";
		}
		
		//로그인 화면 넘어가기
		@RequestMapping(value="/memberLogin", method = RequestMethod.GET)
		public String login(Model model) {
			return "signIn";
		}
		
		//회원가입 화면 넘어가기
		@RequestMapping(value="/memberSingup", method = RequestMethod.GET)
		public String memberSign(Model model) {
			return "signUp";
		}
		//홈화면으로 돌아가기
		@RequestMapping(value="/back", method = RequestMethod.GET)
		public String mainHome(Model model) {
			return "redirect:/";
		}
		
		//회원가입후 메인화면
		@RequestMapping(value="/back", method = RequestMethod.GET)
		public String memberJoin(Model model,HttpSession httpsession,User vo) {
			
			return "redirect:/";
		}
		
		//로그인후
		// 회원가입후 홈화면으로 가기(아이디 중복안되게 유효성 검사 기능)
		@RequestMapping(value = "/enrollmember", method = RequestMethod.POST)
		public String memberJoin(Locale locale, Model model, User vo, HttpSession httpSession) {

			MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
			User login = dao.selectOne(vo);

			if (login == null) {
				System.out.println("회원가입성공");
				httpSession.setAttribute("userid", vo.getUserId());// 회원가입된 로그인가능한 아이디
				return "home";
			} else {
				System.out.println("회원가입 불가");
				model.addAttribute("loginCheck", "OK");
				return "signUp";
			}
		}

		// 로그인후 화면 이동
		@RequestMapping(value = "/login", method = RequestMethod.POST)
		public String login(Locale locale, Model model, User vo, HttpSession httpSession) {

			MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
			User login = dao.selectOne(vo);
			if (login != null) {
				httpSession.setAttribute("userid", login.getUserId());
				return "readyResume";
			} else {

				return "login";
			}

		}
		
		// 로그아웃 기능
		@RequestMapping(value = "/logoutMember", method = RequestMethod.GET)
		public String logout(HttpSession httpSession) {
			httpSession.invalidate();

			return "home";

		}	
}
