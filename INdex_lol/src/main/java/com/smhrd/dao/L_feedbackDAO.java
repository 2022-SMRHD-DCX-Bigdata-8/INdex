package com.smhrd.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.L_feedback;

public class L_feedbackDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	public L_feedback fdview(L_feedback t_feedback) {
		SqlSession session = factory.openSession(true);
		L_feedback result = session.selectOne("fdview",t_feedback);
		session.close();
		
		return result;
	}
}
