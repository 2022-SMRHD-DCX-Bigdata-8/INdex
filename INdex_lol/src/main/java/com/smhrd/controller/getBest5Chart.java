package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.smhrd.dao.L_userdataDAO;
import com.smhrd.entity.L_userdata;

public class getBest5Chart implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("best5 가져오는곳");
		String userId = request.getParameter("userId");
		JSONArray champAvgArray = new JSONArray();
		L_userdataDAO userDataDAO = new L_userdataDAO();
		List<L_userdata> champDesc = userDataDAO.champDesc(userId);
		List<L_userdata> userdata = userDataDAO.udview(userId);

		System.out.println(userdata);
		JSONObject jsonData = new JSONObject();

		// 챔피언별 플레이 데이터 계산
		for (int j = 0; j < Math.min(5, champDesc.size()); j++) {

			L_userdata champ = champDesc.get(j);
			int champkill = 0;
			int champdeath = 0;
			int champassist = 0;
			double champAvg = 0;
			double k_avg = 0;
			double d_avg = 0;
			double a_avg = 0;

			for (L_userdata user : userdata) {
				if (champ.getU_champ().equals(user.getU_champ())) {
					champkill += user.getU_kill();
					champdeath += user.getU_death();
					champassist += user.getU_assist();
				}
			}

			k_avg = Math.round(champkill / (double) champ.getChampcnt() * 10) / 10.0;
			d_avg = Math.round(champdeath / (double) champ.getChampcnt() * 10) / 10.0;
			a_avg = Math.round(champassist / (double) champ.getChampcnt() * 10) / 10.0;
			champAvg = Math.round((k_avg + a_avg) / d_avg * 10) / 10.0;

			JSONObject champData = new JSONObject();
			champData.put("championName", champ.getU_champ());
			champData.put("csAvg", champ.getU_cs());
			champData.put("k", k_avg);
			champData.put("d", d_avg);
			champData.put("a", a_avg);
			champData.put("avg", champAvg);
			champData.put("played", champ.getChampcnt());
			champAvgArray.put(champData);
		}

		jsonData.put("champAvgArray", champAvgArray);

		// jsonData를 이용하여 응답 데이터 생성 또는 필요한 처리
		response.setContentType("application/json");
		response.getWriter().write(jsonData.toString());

		return null;
	}

}
