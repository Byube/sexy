package taehoon.com.sexy;


import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import taehoon.com.bean.SexyCompanyBean;
import taehoon.com.bean.SexyMemberBean;
import taehoon.com.bean.SexyProductBean;
import taehoon.com.bean.SexyProductTest;
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
			return "redirect:insertProgogo.vip";
		}
		return "redirect:login.jsp";
	}
	//고객 아이디 중복 체크
	
	@RequestMapping(value = "insertProgogo.vip")
	public String insertProductFun(HttpSession session, Model model) {
		String id =(String)session.getAttribute("id");
		model.addAttribute("cno", dao.selectCno(id));
		return "insertproduct";
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
	//제품추가
	@RequestMapping(value = "productGoGo.vip")
	public String productGoGoFun(SexyProductTest test,MultipartHttpServletRequest mtf) throws Exception{		
	    SexyProductBean spb = new SexyProductBean(); 
	
	    spb.setCno(Integer.parseInt(test.getCno()));		 
	    spb.setPname(test.getPname());
	    spb.setPprice(Integer.parseInt(test.getPprice()));
	    spb.setPcolor(test.getPcolor());
	    spb.setPqty(Integer.parseInt(test.getPqty()));
	    spb.setPcategory(test.getPcategory());
	    spb.setPurl(test.getPurl());
	    
	    String fileTag = "file"; 
		String filePath = "C:\\Users\\kangj\\git\\sexy\\src\\main\\webapp\\productImg\\";
		MultipartFile file = mtf.getFile(fileTag);
		String fileName = file.getOriginalFilename();
		if(fileName.length()>0) {
		   try {
			   spb.setPfilename(fileName);
			   file.transferTo(new File(filePath+fileName));
		   } catch (Exception e) {
			   System.out.println("업로드 오류");
		   }
		}	    
		System.out.println(spb);
	    dao.insertProFun(spb);
		return "redirect:insertProgogo.vip";
	}
	
	
	@RequestMapping(value = "showInfo.vip")
	public String test1(Model model,String url) {
		model.addAttribute("test", url);
		return"shoppingView";
	}
	@RequestMapping(value = "logoutFun.vip")
	public String logoutAction(HttpSession session) {
		session.invalidate();
		return "redirect:index.jsp";
	}
	@RequestMapping(value = "prolist.vip")
	public String showProlistFun(Model model) {
		HashMap<String, Object>map = new HashMap<String, Object>();
		model.addAttribute("plist", dao.selectPro(map));
		return "prolist";
	}
	
	
	
	

	
	
	
		
	
	
}
