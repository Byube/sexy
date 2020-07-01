package taehoon.com.dao;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Component;

import taehoon.com.bean.SexyCompanyBean;
import taehoon.com.bean.SexyMemberBean;
import taehoon.com.bean.SexyProductBean;

@Component
public class TaehoonSexyDao extends SqlSessionDaoSupport{
	
	@Resource
	protected void initDao(SqlSessionTemplate st) throws Exception {
		// TODO Auto-generated method stub
		this.setSqlSessionTemplate(st);
	}
	
	public boolean MemberLoginCheck(SexyMemberBean smb){
		String name = this.getSqlSession().selectOne("MemberLoginCheck", smb);
	    return (name==null)?false:true;
	}
	public boolean ComLoginCheck(SexyCompanyBean scb){
		String name = this.getSqlSession().selectOne("ComLoginCheck", scb);
	    return (name==null)?false:true;
	}
	
	public boolean CheckIdFun(String id) {
	   String name = this.getSqlSession().selectOne("CheckInFun", id);
	   return (name==null)?false:true;
	}
	public void insertMember(SexyMemberBean smb) {
		this.getSqlSession().insert("insertMember", smb);
	}
	public void insertSexyCom(SexyCompanyBean scb) {
		this.getSqlSession().insert("insertSexyCom", scb);
	}
	public boolean CheckCnameFun(String ccname) {
		String ctel = this.getSqlSession().selectOne("CheckCnameFun", ccname);
		return (ctel==null)?false:true;		
	}	
	public boolean CheckComIdFun(String id) {
		   String name = this.getSqlSession().selectOne("CheckComIdFun", id);
		   return (name==null)?false:true;
    }
	public List<Object> selectPro(HashMap<String, Object>map){
		return this.getSqlSession().selectList("selectPro", map);
	}
	public int selectCno(String id) {
		return this.getSqlSession().selectOne("selectCno", id);
	}
	public void insertProFun(SexyProductBean spb) {
		this.getSqlSession().insert("insertProFun", spb);
	}
	public int getTotalList(HashMap<String, Object>map) {
		return this.getSqlSession().selectOne("getTotalList", map);
	}
	public List<SexyCompanyBean> selectComFun(String id){
		return this.getSqlSession().selectList("selectComFun", id);
	}
	public String getdbPassWord(int no) {
		return this.getSqlSession().selectOne("getdbPassWord", no);
	}
	public void deletePro(int no) {
		this.getSqlSession().delete("deletePro", no);
	}
	
}
