package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.smhrd.dao.L_ghostdataDAO;
import com.smhrd.entity.L_ghostdata;

public class getGhostDataList implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		System.out.println("고스트데이터 가져오는곳");
		String u_rank = request.getParameter("u_rank");
		System.out.println(u_rank);
		JSONObject jsonData = new JSONObject();
		L_ghostdataDAO ghostDataDAO = new L_ghostdataDAO();
		List<L_ghostdata> userdata = null;

		JSONArray ghostDataArray = new JSONArray();
		if (!u_rank.equals("unranked")) {
			userdata = ghostDataDAO.gdview(u_rank);

			for (L_ghostdata ghostData : userdata) {
				JSONObject ghostDataObject = new JSONObject();

				// G_WARDSKILL, G_WARDSPLACED, G_MINIONKILL
				int playtimeInSeconds = ghostData.getG_playtime();
				int minutes = playtimeInSeconds / 60;
				int seconds = playtimeInSeconds % 60;
				JSONObject userDataObject = new JSONObject();
				String playtimeString = String.format("%02dm %02ds", minutes, seconds);
				userDataObject.put("u_playtime", playtimeString);
				ghostDataObject.put("g_idx", ghostData.getG_idx());
				ghostDataObject.put("g_rank", ghostData.getG_rank());
				ghostDataObject.put("g_gold", ghostData.getG_gold());
				ghostDataObject.put("g_level", ghostData.getG_level());
				ghostDataObject.put("g_damage", ghostData.getG_damage());
				ghostDataObject.put("g_playtime", playtimeString);
				ghostDataObject.put("g_cs", ghostData.getG_cs());
				ghostDataObject.put("g_teamposition", ghostData.getG_teamposition());
				ghostDataObject.put("g_kill", ghostData.getG_kill());
				ghostDataObject.put("g_death", ghostData.getG_death());
				ghostDataObject.put("g_assist", ghostData.getG_assist());
				ghostDataObject.put("g_wawrdskill", ghostData.getG_wardskill());
				ghostDataObject.put("g_wardsplaced", ghostData.getG_wardsplaced());
				ghostDataObject.put("g_minionkill", ghostData.getG_minionkill());

				ghostDataArray.put(ghostDataObject);
			}
		} else {
			u_rank = "SILVER";
			userdata = ghostDataDAO.gdview(u_rank);
			for (L_ghostdata ghostData : userdata) {
				System.out.println(userdata);

				JSONObject ghostDataObject = new JSONObject();

				// G_WARDSKILL, G_WARDSPLACED, G_MINIONKILL
				int playtimeInSeconds = ghostData.getG_playtime();
				int minutes = playtimeInSeconds / 60;
				int seconds = playtimeInSeconds % 60;
				JSONObject userDataObject = new JSONObject();
				String playtimeString = String.format("%02dm %02ds", minutes, seconds);
				userDataObject.put("u_playtime", playtimeString);
				ghostDataObject.put("g_idx", ghostData.getG_idx());
				ghostDataObject.put("g_rank", ghostData.getG_rank());
				ghostDataObject.put("g_gold", ghostData.getG_gold());
				ghostDataObject.put("g_level", ghostData.getG_level());
				ghostDataObject.put("g_damage", ghostData.getG_damage());
				ghostDataObject.put("g_playtime", playtimeString);
				ghostDataObject.put("g_cs", ghostData.getG_cs());
				ghostDataObject.put("g_teamposition", ghostData.getG_teamposition());
				ghostDataObject.put("g_kill", ghostData.getG_kill());
				ghostDataObject.put("g_death", ghostData.getG_death());
				ghostDataObject.put("g_assist", ghostData.getG_assist());
				ghostDataObject.put("g_wawrdskill", ghostData.getG_wardskill());
				ghostDataObject.put("g_wardsplaced", ghostData.getG_wardsplaced());
				ghostDataObject.put("g_minionkill", ghostData.getG_minionkill());

				ghostDataArray.put(ghostDataObject);

			}
		}

		jsonData.put("ghostDataArray", ghostDataArray);

		response.setContentType("application/json");
		response.getWriter().write(jsonData.toString());

		return null;
	}

}
