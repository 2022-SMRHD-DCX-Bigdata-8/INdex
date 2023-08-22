package com.smhrd.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.L_champimg;
import com.smhrd.entity.L_userdata;

public class L_champimgDAO {
	
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	
	public List<L_champimg> champimg(L_champimg l_champimg) {
		SqlSession session = factory.openSession(true);
		List<L_champimg> champimg = session.selectList("champimg", l_champimg);
		session.close();
		return champimg;
	}
}
