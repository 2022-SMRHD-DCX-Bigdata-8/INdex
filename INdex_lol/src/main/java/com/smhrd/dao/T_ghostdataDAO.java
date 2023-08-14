package com.smhrd.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.T_ghostdata;

public class T_ghostdataDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	
	public T_ghostdata fdview(T_ghostdata t_ghostdata) {
		SqlSession session = factory.openSession();
		T_ghostdata result = session.selectOne("fdview",t_ghostdata);
		session.close();
		
		return result;
	}
}
