package taehoon.com.dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Component;

import taehoon.com.bean.SexyMemberBean;

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
	public boolean CheckIdFun(String id) {
	   String name = this.getSqlSession().selectOne("CheckInFun", id);
	   return (name==null)?false:true;
	}
	public void insertMember(SexyMemberBean smb) {
		this.getSqlSession().insert("insertMember", smb);
	}
	
	
}
