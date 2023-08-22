package com.smhrd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.L_userdata;
import com.smhrd.entity.L_usertimeline;

public class L_usertimelineDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public int insertUserTimeline(L_usertimeline userTimeline) {
		SqlSession session = factory.openSession(true);

		int cnt = session.insert("insertUserTimeline", userTimeline);

		session.close();
		return cnt;
	}

	public List<L_usertimeline> checkExistingData(String matchcd) {
		SqlSession session = factory.openSession(true);
		List<L_usertimeline> result = session.selectList("ut_matchCdCheck", matchcd);

		session.close();
		return result; // 중복 데이터가 있으면 true, 없으면 false 반환
	}
}
