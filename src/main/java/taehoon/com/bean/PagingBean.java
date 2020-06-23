package taehoon.com.bean;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import taehoon.com.dao.TaehoonSexyDao;

@Component
public class PagingBean {
	@Autowired
	TaehoonSexyDao dao;
	@Resource
	StringBuffer sb;
	
	public void makeProcess() {
		
	}
}
