package com.smhrd.dao;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.L_user;

public class L_userDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public int join(L_user l_user) {

		SqlSession session = factory.openSession(true);
		int result = 0;
		try {
			result = session.insert("join", l_user);

		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
		return result;
	}

	public L_user login(L_user l_user) {
		SqlSession session = factory.openSession(true);

		L_user result = null;
		try {
			result = session.selectOne("login", l_user);

		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();
		return result;
	}

	public int update(L_user l_user) {
		SqlSession session = factory.openSession(true);

		int result = 0;
		try {
			result = session.insert("update", l_user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
		return result;
	}

	public int delete(L_user l_user) {
		SqlSession session = factory.openSession(true);
		int result = 0;
		try {
			result = session.insert("delete", l_user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
		return result;
	}

	public List<L_user> udview() {
		SqlSession session = factory.openSession(true);
		List<L_user> list = null;
		try {
			list = session.selectList("list");

		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
		return list;
	}

	public L_user emailCheck(String email) {
		SqlSession session = factory.openSession(true);
		L_user list = null;
		try {
			list = session.selectOne("eCheck", email);

		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return list;

	}

	public L_user nickCheck(String nick) {
		SqlSession session = factory.openSession(true);

		L_user list = session.selectOne("nCheck", nick);

		session.close();

		return list;

	}

	public L_user idCheck(String id) {
		SqlSession session = factory.openSession(true);

		L_user list = session.selectOne("idCheck", id);

		session.close();

		return list;

	}

	public L_user idfind(L_user l_user) {
		SqlSession session = factory.openSession(true);

		L_user result = session.selectOne("idfind", l_user);

		session.close();

		return result;
	}

	public L_user pwfind(L_user l_user) {
		SqlSession session = factory.openSession(true);

		L_user result = session.selectOne("pwfind", l_user);

		session.close();

		return result;
	}
	
	public int updatePw(L_user l_user) {
		SqlSession session = factory.openSession(true);

		int result = session.update("updatePW", l_user);

		session.close();

		return result;
	}

}
