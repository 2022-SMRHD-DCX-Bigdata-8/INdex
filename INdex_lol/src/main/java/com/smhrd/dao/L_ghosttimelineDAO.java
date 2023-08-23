package com.smhrd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.L_ghosttimeline;


public class L_ghosttimelineDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public List<L_ghosttimeline> timeLineList(String u_rank) {
		SqlSession session = factory.openSession(true);
		List<L_ghosttimeline> result = session.selectList("gTimeLine", u_rank);
		session.close();
		return result;

	}

}
