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
	
	/**
	 * 자신이 팔로우한 사람과 팔로워한 사람을 보는 화면으로 이동
	 * @return
	 */
	@RequestMapping(value = "/viewFollow", method = RequestMethod.GET)
	public String viewFollow(Model model,HttpSession httpSession) {
		String userEmail = (String)httpSession.getAttribute("useremail");
		List<String> followList = memberRepository.viewFollow(userEmail);
		List<String> followerList = memberRepository.viewFollower(userEmail);
		model.addAttribute("followMemberList",followList);
		model.addAttribute("follwerMemberList",followerList);
		return "imsi/viewFollow";
	}
	
	/**
	 * 채팅 화면으로 이동함
	 * @param vo
	 * @return
	 */
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
	
	/**
	 * 채팅 메시지를 데이터베이스에 올리는 기능
	 * @param httpSession
	 * @param vo
	 * @return
	 */
	@RequestMapping(value = "/writeMessage", method = RequestMethod.GET)
	public @ResponseBody int writeMessage(HttpSession httpSession, DirectMessage vo) {
		String userEmail = (String)httpSession.getAttribute("useremail");
		vo.setUserEmail(userEmail);
		System.out.println(vo);
		int result = memberRepository.writeMessage(vo);
		return result;
	}
	
	
	
}
