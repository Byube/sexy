package taehoon.com.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import taehoon.com.bean.SexyMemberBean;

@Component
public class TaehoonSexyDao extends SqlSessionDaoSupport{
	
	@Resource
	protected void initDao(SqlSessionTemplate st) throws Exception {
		// TODO Auto-generated method stub
		this.setSqlSessionTemplate(st);
	}
	
	public String MemberLoginCheck(String id){
		return this.getSqlSession().selectOne("MemberLoginCheck", id);
	}
	
	
}
