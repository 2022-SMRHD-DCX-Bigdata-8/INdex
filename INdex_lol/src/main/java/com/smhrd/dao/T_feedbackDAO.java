package com.smhrd.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.T_feedback;

public class T_feedbackDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	public T_feedback fdview(T_feedback t_feedback) {
		SqlSession session = factory.openSession();
		T_feedback result = session.selectOne("fdview",t_feedback);
		session.close();
		
		return result;
	}
}
