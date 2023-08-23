package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.smhrd.dao.L_usertimelineDAO;
import com.smhrd.entity.L_ghosttimeline;
import com.smhrd.entity.L_usertimeline;

public class getUserTimeLinetData implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("유저타임라인 가져오는곳");
		String u_match = request.getParameter("userMatchcd");
		JSONObject jsonData = new JSONObject();
		L_usertimelineDAO userDataDAO = new L_usertimelineDAO();
		List<L_usertimeline> userTimeLineData = null;
		JSONArray userTimeDataArray = new JSONArray();

		if (u_match != null) {
			userTimeLineData = userDataDAO.checkExistingData(u_match);

			for (L_usertimeline timeLineData : userTimeLineData) {
				JSONObject userTimeLineObject = new JSONObject();

				userTimeLineObject.put("u_id", timeLineData.getU_id());
				userTimeLineObject.put("u_timestamp", timeLineData.getU_timestamp());
				userTimeLineObject.put("u_timegold", timeLineData.getU_timegold());
				userTimeLineObject.put("u_timedamage", timeLineData.getU_timedamage());
				userTimeLineObject.put("u_jmkill", timeLineData.getU_jmkill());
				userTimeLineObject.put("u_mkill", timeLineData.getU_mkill());
				userTimeLineObject.put("u_teamposition", timeLineData.getU_teamposition());

				userTimeDataArray.put(userTimeLineObject);
			}
		} else {
			jsonData.put("userTimeData", 0); // 또는 원하는 값으로 설정

		}
		jsonData.put("userTimeDataArray", userTimeDataArray);
		response.setContentType("application/json");
		response.getWriter().write(jsonData.toString());

		return null;
	}

}
