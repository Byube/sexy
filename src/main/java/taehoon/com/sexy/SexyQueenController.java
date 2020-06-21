package taehoon.com.sexy;


import java.io.File;


import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import taehoon.com.bean.SexyCompanyBean;
import taehoon.com.bean.SexyMemberBean;
import taehoon.com.dao.TaehoonSexyDao;

@Controller
public class SexyQueenController {
	
	@Inject
	TaehoonSexyDao dao;
	
	//고객 로그인
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
	//업체 로그인
	@RequestMapping(value = "adloginFun.vip")
	public String adgogoLogin(SexyCompanyBean scb,String id, String password,HttpSession session) {
		scb.setCid(id);
		scb.setCpassword(password);
		if(dao.ComLoginCheck(scb)) {
			session.setAttribute("id", id);
			session.setMaxInactiveInterval(600);
			return "insertproduct";
		}
		return "redirect:login.jsp";
	}
	//고객 아이디 중복 체크
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
	//업체 아이디 중복 체크
	@RequestMapping(value = "comIdCheckFun.vip")
	public String comIdCheckFun(String id,Model model) {
		boolean state = false;
		state = dao.CheckComIdFun(id);
		if(state) {
			model.addAttribute("check", null);
			model.addAttribute("id",id);
		}else {
			model.addAttribute("check", "ok");
			model.addAttribute("id",id);			
		}
		return "comIdCheck";
	}
	//업체 이름 중복 체크
	@RequestMapping(value = "checkCnameFun.vip")
	public String CheckCnameFun(String ccname, Model model) {
		boolean state = false; 
		state = dao.CheckCnameFun(ccname);
		if(state){ 
			model.addAttribute("check", null);
		    model.addAttribute("cname", ccname); 
		}else{ 
			model.addAttribute("check", "ok");
		    model.addAttribute("cname", ccname); 
	    }		 
		return "nameCheck";
	}
	//고객 회원 가입
	@RequestMapping(value = "joinFun.vip")
	public String joinMemberFun(SexyMemberBean smb) {
		dao.insertMember(smb);
		return "redirect:login.jsp";
	}
	//업체 회원가입
	@RequestMapping(value = "insertCom.vip")
	public String insertCompanyFun(SexyCompanyBean scb, MultipartHttpServletRequest mtf) throws Exception{
		String fileTag = "file"; 
		String filePath = "C:\\Users\\kangj\\git\\sexy\\src\\main\\webapp\\comLogo\\";
		MultipartFile file = mtf.getFile(fileTag);
		String fileName = file.getOriginalFilename();
		if(fileName.length()>0) {
		   try {
			   scb.setCfilename(fileName);
			   file.transferTo(new File(filePath+fileName));
		   } catch (Exception e) {
			   System.out.println("업로드 오류");
		   }
		}else {
			scb.setCfilename("noimg.jpg");
		}
		dao.insertSexyCom(scb);		
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
	
	
	
	

	
	
	
		
	
	
}
