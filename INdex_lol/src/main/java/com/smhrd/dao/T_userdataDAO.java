package com.smhrd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.T_userdata;

public class T_userdataDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	public List<T_userdata> udview() {
		SqlSession session = factory.openSession(true);
		List<T_userdata> list = session.selectList("fdlist");
		session.close();
		return list;
	}
}
