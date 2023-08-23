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

public class getRadarChart implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("레이다용데이터 가져오는곳");
		String userId = request.getParameter("userId");
		JSONObject jsonData = new JSONObject();
		L_userdataDAO userDataDAO = new L_userdataDAO();

		L_userdata userdata = userDataDAO.userdataDescOne(userId);

		if (userdata != null) {
			int playtimeInSeconds = userdata.getU_playtime();
			int minutes = playtimeInSeconds / 60;
			int seconds = playtimeInSeconds % 60;
			JSONObject userDataObject = new JSONObject();
			String playtimeString = String.format("%02dm %02ds", minutes, seconds);

			userDataObject.put("u_idx", userdata.getU_idx());
			userDataObject.put("u_gold", userdata.getU_gold());
			userDataObject.put("u_level", userdata.getU_level());
			userDataObject.put("u_damage", userdata.getU_damage());
			userDataObject.put("u_playtime", playtimeString);
			userDataObject.put("u_wardskill", userdata.getU_wardskill());
			userDataObject.put("u_gamecnt", userdata.getU_gamecnt());
			userDataObject.put("u_winlose", userdata.getU_winlose());
			userDataObject.put("u_champ", userdata.getU_champ());
			userDataObject.put("u_matchcd", userdata.getU_matchcd());
			userDataObject.put("u_cs", userdata.getU_cs());
			userDataObject.put("u_teamposition", userdata.getU_teamposition());
			userDataObject.put("u_kill", userdata.getU_kill());
			userDataObject.put("u_death", userdata.getU_death());
			userDataObject.put("u_assist", userdata.getU_assist());
			userDataObject.put("u_minionkill", userdata.getU_minionkill());
			userDataObject.put("u_wardsplaced", userdata.getU_wardsplaced());

			jsonData.put("userRadarData", userDataObject);
		} else {
			// userdata가 없을 경우에 대한 처리
			jsonData.put("userRadarData", 0); // 또는 원하는 값으로 설정
		}

		response.setContentType("application/json");
		response.getWriter().write(jsonData.toString());

		return null;
	}

}
