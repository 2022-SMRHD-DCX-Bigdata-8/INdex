package com.smhrd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.L_userdata;

public class L_userdataDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	public List<L_userdata> udview() {
		SqlSession session = factory.openSession(true);
		List<L_userdata> list = session.selectList("fdlist");
		session.close();
		return list;
	}
}
