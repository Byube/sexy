package taehoon.com.sexy;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SexyQueenController {
	
	@RequestMapping(value = "gogo.vip")
	public String gogoddd(Model model) {
		model.addAttribute("sexy", "I LOVE U");
		return "test1";
	}

}
