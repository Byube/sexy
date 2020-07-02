package taehoon.com.sexy;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import taehoon.com.dao.TaehoonSexyDao;

@RestController
public class SexyBossAjaxController {

	@Resource
	private TaehoonSexyDao dao;
	
	@RequestMapping(value = "delpasschek.vip")
	public Map<String, String> deleteProFun(int no,String pass,HttpSession session) {
		String id =(String)session.getAttribute("cid");
		Map<String, String>map = new HashMap<String, String>();		
		String dbPass = dao.getdbPassWord(dao.selectCno(id));
		map.put("state", String.valueOf(dbPass!=null&&dbPass.equals(pass)));
		return map;
	}
}
