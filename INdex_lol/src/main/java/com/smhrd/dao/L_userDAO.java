package com.smhrd.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.L_user;

public class L_userDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	public int join(L_user t_user) {
		SqlSession session = factory.openSession(true);
		int result = session.insert("join", t_user);
		session.close();
		return result;
	}
	public L_user login(L_user t_user) {
		SqlSession session = factory.openSession(true);
		L_user result = session.selectOne("login", t_user);
		session.close();
		return result;
	}
	
	public int update(L_user t_user) {
		SqlSession session = factory.openSession(true);
		int result = session.insert("update", t_user);
		session.close();
		return result;
	}
	
	public int delete(L_user t_user) {
		SqlSession session = factory.openSession(true);
		int result = session.insert("delete", t_user);
		session.close();
		return result;
	}
	
	
	public List<L_user> udview() {
		SqlSession session = factory.openSession(true);
		List<L_user> list = session.selectList("list");
		session.close();
		return list;
	}
	
	
	public L_user check(String email) {
		SqlSession session = factory.openSession();
		
		L_user list = session.selectOne("check", email);
		
		session.close();
		
		return list;
		
	}
	
	
	
	
	
	
	
	
}
