package taehoon.com.sexy;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import taehoon.com.bean.SexyCompanyBean;
import taehoon.com.bean.SexyMemberBean;
import taehoon.com.dao.TaehoonSexyDao;

@Controller
public class SexyQueenController {
	
	@Inject
	TaehoonSexyDao dao;
	
	@RequestMapping(value = "loginFun.vip")
	public String gogologing(SexyMemberBean smb,String id, String password,HttpSession session) {
		smb.setId(id);
		smb.setPassword(password);
		if(dao.MemberLoginCheck(smb)) {
			session.setAttribute("id", id);
			session.setMaxInactiveInterval(300);
			return "index";
		}
		return "redirect:login.jsp";
	}
	@RequestMapping(value = "checkIdFun.vip")
	public String CheckIdFun(String id,Model model) {
		boolean state = false;
		state = dao.CheckIdFun(id);
		if(state) {
			model.addAttribute("check", null);
			model.addAttribute("id",id);
		}else {
			model.addAttribute("check", "ok");
			model.addAttribute("id",id);			
		}
		return "idcheck";
	}
	@RequestMapping(value = "joinFun.vip")
	public String joinMemberFun(SexyMemberBean smb) {
		dao.insertMember(smb);
		return "redirect:login.jsp";
	}
	@RequestMapping(value = "test.vip")
	public String test1(Model model) {
		model.addAttribute("test", "https://www.stylenanda.com/product/detail.html?product_no=247174&cate_no=182&display_group=1");
		return"shoppingView";
	}
	@RequestMapping(value = "logoutFun.vip")
	public String logoutAction(HttpSession session) {
		session.invalidate();
		return "redirect:index.jsp";
	}
	@RequestMapping(value = "insertCom.vip")
	public String insertCompanyFun(SexyCompanyBean scb) {
		dao.insertSexyCom(scb);
		return "insertcompany";
	}
	@RequestMapping(value = "checkCnameFun.vip")
	public String CheckCnameFun(String ccname, Model model) {
		boolean state = false; 
		state = dao.CheckCnameFun(ccname);
		if(state){ 
			model.addAttribute("check", null);
		    model.addAttribute("id", ccname); 
		}else{ 
			model.addAttribute("check", "ok");
		    model.addAttribute("id", ccname); 
	    }		 
		return "nameCheck";
	}

	
	
	
		
	
	
}
