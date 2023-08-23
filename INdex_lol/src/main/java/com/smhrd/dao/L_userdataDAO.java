package com.smhrd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;
import com.smhrd.entity.L_user;
import com.smhrd.entity.L_userdata;

public class L_userdataDAO {
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public List<L_userdata> udview(String u_id) {
		SqlSession session = factory.openSession(true);
		List<L_userdata> list = session.selectList("fdlist", u_id);
		session.close();
		return list;
	}

	public int insertPlayData(String id, L_userdata userData) {
		SqlSession session = factory.openSession(true);

		int nextIdx = getNextIdx(); // 시퀀스 값을 얻어옴
		userData.setU_idx(nextIdx); // 얻어온 시퀀스 값을 u_idx에 설정
		userData.setU_id(id); // u_id 설정 (매개변수로 받은 id)

		int cnt = session.insert("insertPlayData", userData);

		session.close();
		return cnt;
	}

	public int getNextIdx() {
		SqlSession session = factory.openSession(true);
		return session.selectOne("getNextIdx");
	}

	public L_userdata checkExistingData(String matchcd) {
		SqlSession session = factory.openSession(true);
		L_userdata result = session.selectOne("matchCdCheck", matchcd);

		session.close();
		return result; // 중복 데이터가 있으면 true, 없으면 false 반환
	}

	// 가장 최근 데이터 가져오는용
	public List<L_userdata> userdataDesc(String u_id) {
		SqlSession session = factory.openSession(true);
		List<L_userdata> userdataDesc = session.selectList("userdataDesc", u_id);
		session.close();
		return userdataDesc;
	}

	// 가장 최근 데이터 가져오는거 단 하나
	public L_userdata userdataDescOne(String u_id) {
		SqlSession session = factory.openSession(true);
		L_userdata userdataDesc = session.selectOne("userdataDescOne", u_id);
		session.close();
		return userdataDesc;
	}

	public List<L_userdata> champDesc(String u_id) {
		SqlSession session = factory.openSession(true);
		List<L_userdata> champDesc = session.selectList("champDesc", u_id);
		session.close();
		return champDesc;
	}

}
