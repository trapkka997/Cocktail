package sesoc.global.cocktail.controller;

import java.util.Locale;

import javax.inject.Inject;
import javax.mail.MessagingException;
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

import sesoc.global.cocktail.dao.EmailDAO;
import sesoc.global.cocktail.dao.MemberDAO;
import sesoc.global.cocktail.dao.EmailRepository;
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

	/**
	 * 이메일 인증을 받았을때 나오는 alert 화면
	 * @param user_email
	 * @param key
	 * @return alert 창
	 * @throws Exception
	 * @author hangyutae
	 */
	@RequestMapping(value = "/emailConfirm", method = RequestMethod.GET)
	public String emailConfirm(String user_email, String key, Model model) throws Exception { // �씠硫붿씪�씤利�
		System.out.println(user_email);
		User user = new User();
		user.setUserEmail(user_email);
		user.setUserAuthCode(key);
		dao.userAuth(user);
		model.addAttribute("user_email", user_email);

		return "email/emailConfirm";
	}
	
	/**
	 * 회원가입
	 * @param vo USER[userEmail, userPwd]
	 * @param httpSession
	 * @return 1 : 성공, 2 : 실패
	 * @throws Exception
	 * @author hangyutae
	 */
	@Transactional
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public @ResponseBody String register(Locale locale, Model model, RedirectAttributes rttr, User vo, HttpSession httpSession) throws Exception {
		EmailDAO emaiLDao = session.getMapper(EmailDAO.class);
		MemberDAO memberDao = session.getMapper(MemberDAO.class);
		System.out.println(vo);
		User login = memberDao.selectOne(vo);
		
		if (login == null) {
			emaiLDao.insertUser(vo);
				String key = new TempKey().getKey(50, false); // 인증키 생성

				dao.createAuthKey(vo.getUserEmail(), key); // 인증키 DB저장

				MailHandler sendMail = new MailHandler(mailSender);
				sendMail.setSubject("[ALMOM 서비스 이메일 인증]");
				sendMail.setText(
						new StringBuffer().append("<h1>메일인증</h1>").append("<a href='http://10.10.8.165:8888/cocktail/emailConfirm?user_email=").append(vo.getUserEmail()).append("&key=").append(key).append("' target='_blenk'>이메일 인증 확인</a>").toString());
				sendMail.setFrom("trapkka997@gmail.com", "알몸개발자");
				sendMail.setTo(vo.getUserEmail());
				sendMail.send();
				rttr.addFlashAttribute("authmsg" , "가입시 사용한 이메일로 인증해주 3");
				httpSession.setAttribute("useremail", vo.getUserEmail());
				return "1";
		} else {
			return "2";
		}
	}

}
