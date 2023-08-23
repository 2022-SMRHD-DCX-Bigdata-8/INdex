package com.smhrd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.L_ghostdata;

public class L_ghostdataDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	
	public List<L_ghostdata> gdview(String u_rank) {
		SqlSession session = factory.openSession();
		List<L_ghostdata> result = session.selectList("gdview" , u_rank);
		session.close();
		
		return result;
	}
}
