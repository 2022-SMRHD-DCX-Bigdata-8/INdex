package com.smhrd.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.L_ghostdata;

public class L_ghostdataDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	
	public L_ghostdata fdview(L_ghostdata t_ghostdata) {
		SqlSession session = factory.openSession();
		L_ghostdata result = session.selectOne("fdview",t_ghostdata);
		session.close();
		
		return result;
	}
}
