package sesoc.global.cocktail.controller;

import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

<<<<<<< HEAD
import sesoc.global.cocktail.dao.EmailDAO;
import sesoc.global.cocktail.dao.MemberDAO;
=======
import sesoc.global.cocktail.dao.EmailRepository;
>>>>>>> branch 'master' of https://github.com/trapkka997/Cocktail
import sesoc.global.cocktail.email.MailHandler;
import sesoc.global.cocktail.email.TempKey;
import sesoc.global.cocktail.vo.User;

@Controller
public class EmailController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired 
	SqlSession session;
	
	@Inject
	private JavaMailSender mailSender;
	
	@Autowired EmailRepository dao;


	@Transactional
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String RegisterPost(User user, Model model, RedirectAttributes rttr, HttpServletRequest request, HttpSession session) throws Exception {
		logger.info("회원가입...");
		logger.info(user.toString());
		System.out.println(user);
		dao.insertUser(user); // 회원가입 DAO

		String key = new TempKey().getKey(50, false); // 인증키 생성

		dao.createAuthKey(user.getUserEmail(), key); // 인증키 DB저장

		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[ALMOM 서비스 이메일 인증]");
		sendMail.setText(
				new StringBuffer().append("<h1>메일인증</h1>").append("<a href='http://10.10.12.189:8888/cocktail/emailConfirm?user_email=").append(user.getUserEmail()).append("&key=").append(key).append("' target='_blenk'>이메일 인증 확인</a>").toString());
		sendMail.setFrom("trapkka997@gmail.com", "알몸개발자");
		sendMail.setTo(user.getUserEmail());
		sendMail.send();
		rttr.addFlashAttribute("authmsg" , "가입시 사용한 이메일로 인증해주 3");
		return "redirect:/";
	}
	
	@RequestMapping(value = "/emailConfirm", method = RequestMethod.GET)
	public String emailConfirm(String user_email, String key, Model model) throws Exception { // 이메일인증
		System.out.println(user_email);
		User user = new User();
		user.setUserEmail(user_email);
		user.setUserAuthCode(key);
		dao.userAuth(user);
		model.addAttribute("user_email", user_email);

		return "email/emailConfirm";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public @ResponseBody String register(Locale locale, Model model, User vo, HttpSession httpSession) {
		MemberDAO dao = session.getMapper(MemberDAO.class);
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
           1=가입된 이메일 2=비밀번호일치 3=가입완료
	}

}
