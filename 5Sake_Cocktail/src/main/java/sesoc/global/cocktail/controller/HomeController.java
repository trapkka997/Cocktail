package sesoc.global.cocktail.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
	
		return "user/login";
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
	@RequestMapping(value = "/newCc", method = RequestMethod.GET)
	public String newCc(Locale locale, Model model) {
		return "cocktail/product";
	}
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		return "test/first";
	}
	@RequestMapping(value = "/main2", method = RequestMethod.GET)
	public String main2(Locale locale, Model model) {
		return "test/first+limocon";
	}
	@RequestMapping(value = "/newCccc", method = RequestMethod.GET)
	public String newCccc(Locale locale, Model model) {
		return "cocktail/index-1";
	}
	@RequestMapping(value = "/sidebar", method = RequestMethod.GET)
	public String sidebar(Locale locale, Model model) {
		return "test/sidebar";
	}
}
