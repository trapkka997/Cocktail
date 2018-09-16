package sesoc.global.cocktail.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import sesoc.global.cocktail.dao.MemberRepository;
import sesoc.global.cocktail.vo.DirectMessage;
import sesoc.global.cocktail.vo.User;

@Controller
public class TestController {
	@Autowired
	MemberRepository memberRepository;
	
	@RequestMapping(value = "/viewFollow", method = RequestMethod.GET)
	public String viewFollow(Model model,HttpSession httpSession) {
		String userEmail = (String)httpSession.getAttribute("useremail");
		List<String> followList = memberRepository.viewFollow(userEmail);
		List<String> followerList = memberRepository.viewFollower(userEmail);
		model.addAttribute("followMemberList",followList);
		model.addAttribute("follwerMemberList",followerList);
		return "imsi/viewFollow";
	}
	
	
	@RequestMapping(value = "/socketTest", method = RequestMethod.GET)
	public String socketTest(Model model,HttpSession httpSession,DirectMessage vo) {
		String userEmail = (String)httpSession.getAttribute("useremail"); 
		vo.setUserEmail(userEmail);
		System.out.println(vo);
		List<DirectMessage> messageList = memberRepository.selectDirectMessage(vo);
		System.out.println(messageList);
		model.addAttribute("toUserEmail", vo.getToUserEmail());
		model.addAttribute("userEmail", vo.getUserEmail());
		model.addAttribute("messageList",messageList);
		return "imsi/socketTest";
	}
	
	@RequestMapping(value = "/writeMessage", method = RequestMethod.GET)
	public @ResponseBody int writeMessage(HttpSession httpSession, DirectMessage vo) {
		String userEmail = (String)httpSession.getAttribute("useremail");
		vo.setUserEmail(userEmail);
		System.out.println(vo);
		int result = memberRepository.writeMessage(vo);
		return result;
	}
	
	
	
}
