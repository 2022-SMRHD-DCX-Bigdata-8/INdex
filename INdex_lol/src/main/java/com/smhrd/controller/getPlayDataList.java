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

public class getPlayDataList implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("대전기록용 가져오는곳");
		String userId = request.getParameter("userId");
		JSONObject jsonData = new JSONObject();
		L_userdataDAO userDataDAO = new L_userdataDAO();
		List<L_userdata> userdata = userDataDAO.udview(userId);

		

		JSONArray userDataArray = new JSONArray();

		for (L_userdata user : userdata) {
			int playtimeInSeconds = user.getU_playtime();
			int minutes = playtimeInSeconds / 60;
			int seconds = playtimeInSeconds % 60;
			JSONObject userDataObject = new JSONObject();
			String playtimeString = String.format("%02dm %02ds", minutes, seconds);
			
			userDataObject.put("u_idx", user.getU_idx());
			userDataObject.put("u_gold", user.getU_gold());
			userDataObject.put("u_levle", user.getU_level());
			userDataObject.put("u_damage", user.getU_damage());
			userDataObject.put("u_playtime", playtimeString);
			userDataObject.put("u_wardskill", user.getU_wardskill());
			userDataObject.put("u_gamecnt", user.getU_gamecnt());
			userDataObject.put("u_winlose", user.getU_winlose());
			userDataObject.put("u_champ", user.getU_champ());
			userDataObject.put("u_matchcd", user.getU_matchcd());
			userDataObject.put("u_cs", user.getU_cs());
			userDataObject.put("u_teamposition", user.getU_teamposition());
			userDataObject.put("u_kill", user.getU_kill());
			userDataObject.put("u_death", user.getU_death());
			userDataObject.put("u_assist", user.getU_assist());
			userDataObject.put("u_minionkill", user.getU_minionkill());
			userDataObject.put("u_wardsplaced", user.getU_wardsplaced());
			// 필요한 다른 속성들도 추가

			userDataArray.put(userDataObject);
		}

		jsonData.put("userPlayData", userDataArray);

		response.setContentType("application/json");
		response.getWriter().write(jsonData.toString());
	

		return null;
	}

}
