package taehoon.com.sexy;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import taehoon.com.bean.SexyMemberBean;
import taehoon.com.dao.TaehoonSexyDao;

@Controller
public class SexyQueenController {
	
	@Inject
	TaehoonSexyDao dao;
	
	@RequestMapping(value = "loginFun.vip")
	public String gogoddd(SexyMemberBean smb,String id, String password,HttpSession session) {
		smb.setId(id);
		smb.setPassword(password);
		if(dao.MemberLoginCheck(smb)) {
			session.setAttribute("id", id);
			session.setMaxInactiveInterval(300);
			return "index";
		}
		return "redirect:login.jsp";
	}

}
