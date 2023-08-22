package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.L_userdataDAO;
import com.smhrd.dao.L_usertimelineDAO;
import com.smhrd.entity.L_userdata;
import com.smhrd.entity.L_usertimeline;

/**
 * Servlet implementation class playDataCon
 */
@WebServlet("/getPlayData")
public class renewPlayDataCon implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String puuid = request.getParameter("userPuuid"); // 클라이언트에서 받은 롤 닉네임
		String userId = request.getParameter("userId"); // 사용자 아이디 (임의로 설정)

		System.out.println(puuid);
		System.out.println(userId);

		// Riot API로부터 랭크 데이터 가져오기

		try {
			List<String> matchData = ApiUtils.getMatchIds(puuid);
			System.out.println("매치데이터완료");
			List<L_userdata> userDataList = ApiUtils.getPlayDataByMatchIds(puuid, userId, matchData);
			System.out.println("플레이데이터완료");
			List<L_usertimeline> userTimeList = ApiUtils.getTimestampDataByMatchIds(puuid, userId, matchData);
			System.out.println("타임라인완료");

			System.out.println(matchData);
			System.out.println(userDataList);
			System.out.println(userTimeList);

			// 가져온 랭크 데이터를 DB에 저장 또는 업데이트
			L_userdataDAO userdataDAO = new L_userdataDAO();
			L_usertimelineDAO userTimeDAO = new L_usertimelineDAO();

			for (L_userdata userData : userDataList) {
				String ud_matchcd = userData.getU_matchcd();
				L_userdata result = userdataDAO.checkExistingData(ud_matchcd);

				if (result == null) {
					int nextIdx = userdataDAO.getNextIdx();
					userData.setU_idx(nextIdx);
					userData.setU_id(userId);
					int isSuccess = userdataDAO.insertPlayData(userId, userData);

					if (isSuccess > 0) {
						System.out.println("데이터 저장 성공");
						response.getWriter().write("Rank data updated successfully.");
					} else {
						System.out.println("데이터 저장 실패");
					
					}
				} else {
					System.out.println("이미 데이터가 존재합니다: " + ud_matchcd);
				}
			}

			if (userTimeList == null || userTimeList.isEmpty()) {
				System.out.println("이미 데이터가 존재합니다");
				// 이미 데이터가 존재하는 경우 처리 코드 작성
			} else {
				for (L_usertimeline userTime : userTimeList) {
					String ut_matchcd = userTime.getU_matchcd();

					userTime.setU_id(userId);
					int isSuccess = userTimeDAO.insertUserTimeline(userTime);

					if (isSuccess > 0) {
						System.out.println("유저 타임라인 데이터 저장 성공");
						response.getWriter().write("User timeline data updated successfully.");
					} else {
						System.out.println("유저 타임라인 데이터 저장 실패");
					}
				}
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

}
