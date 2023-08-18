package com.smhrd.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	public int insertPlayData(String id, L_userdata userData) {
		SqlSession session = factory.openSession(true);

		int nextIdx = getNextIdx(); // 시퀀스 값을 얻어옴
		userData.setU_idx(nextIdx); // 얻어온 시퀀스 값을 u_idx에 설정
		userData.setU_id(id); // u_id 설정 (매개변수로 받은 id)

		int cnt = session.insert("insertPlayData", userData);

		if (cnt > 0) {
			System.out.println("데이터 저장 성공");
		} else {
			System.out.println("데이터 저장 실패");
		}
		session.close();
		return cnt;
	}

	public int getNextIdx() {
		SqlSession session = factory.openSession(true);
		return session.selectOne("getNextIdx");
	}

	public boolean checkExistingData(String matchcd) {
		// TODO Auto-generated method stub
		return false;
	}

}
