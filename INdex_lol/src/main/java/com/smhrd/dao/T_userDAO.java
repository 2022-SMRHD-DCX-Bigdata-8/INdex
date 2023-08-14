package com.smhrd.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.T_user;

public class T_userDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	public int join(T_user t_user) {
		SqlSession session = factory.openSession(true);
		int result = session.insert("join", t_user);
		session.close();
		return result;
	}
	public T_user login(T_user t_user) {
		SqlSession session = factory.openSession(true);
		T_user result = session.selectOne("login", t_user);
		session.close();
		return result;
	}
	
	public int update(T_user t_user) {
		SqlSession session = factory.openSession(true);
		int result = session.insert("update", t_user);
		session.close();
		return result;
	}
	
	public int delete(T_user t_user) {
		SqlSession session = factory.openSession(true);
		int result = session.insert("delete", t_user);
		session.close();
		return result;
	}
	
	
	public List<T_user> udview() {
		SqlSession session = factory.openSession(true);
		List<T_user> list = session.selectList("list");
		session.close();
		return list;
	}
	
	
	public T_user check(String email) {
		SqlSession session = factory.openSession();
		
		T_user list = session.selectOne("check", email);
		
		session.close();
		
		return list;
		
	}
	
	
	
	
	
	
	
	
}
