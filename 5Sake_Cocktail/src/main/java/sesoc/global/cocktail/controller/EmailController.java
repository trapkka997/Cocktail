package sesoc.global.cocktail.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import sesoc.global.cocktail.dao.EmailDAO;
import sesoc.global.cocktail.email.MailHandler;
import sesoc.global.cocktail.email.TempKey;
import sesoc.global.cocktail.vo.User;

@Controller
public class EmailController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Inject
	private JavaMailSender mailSender;
	
	@Autowired EmailDAO dao;


	@Transactional
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String RegisterPost(User user, Model model, RedirectAttributes rttr, HttpServletRequest request, HttpSession session) throws Exception {
		logger.info("�쉶�썝媛��엯...");
		logger.info(user.toString());
		System.out.println(user);
		dao.insertUser(user); // �쉶�썝媛��엯 DAO

		String key = new TempKey().getKey(50, false); // �씤利앺궎 �깮�꽦

		dao.createAuthKey(user.getUserEmail(), key); // �씤利앺궎 DB���옣

		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[ALMOM �꽌鍮꾩뒪 �씠硫붿씪 �씤利�]");
		sendMail.setText(
				new StringBuffer().append("<h1>硫붿씪�씤利�</h1>").append("<a href='http://10.10.12.189:8888/cocktail/emailConfirm?user_email=").append(user.getUserEmail()).append("&key=").append(key).append("' target='_blenk'>�씠硫붿씪 �씤利� �솗�씤</a>").toString());
		sendMail.setFrom("trapkka997@gmail.com", "�븣紐멸컻諛쒖옄");
		sendMail.setTo(user.getUserEmail());
		sendMail.send();
		rttr.addFlashAttribute("authmsg" , "媛��엯�떆 �궗�슜�븳 �씠硫붿씪濡� �씤利앺빐二� 3");
		return "redirect:/";
	}
	
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


}
