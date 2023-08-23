package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.smhrd.dao.L_ghosttimelineDAO;
import com.smhrd.entity.L_ghostdata;
import com.smhrd.entity.L_ghosttimeline;

public class getGhostTimeLineData implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("고스트타임라인 가져오는곳");
		String u_rank = request.getParameter("userRank");
		System.out.println(u_rank);
		JSONObject jsonData = new JSONObject();
		L_ghosttimelineDAO ghostDataDAO = new L_ghosttimelineDAO();
		List<L_ghosttimeline> ghostTimeLineData = null;
		JSONArray ghostTimeDataArray = new JSONArray();

		if (!u_rank.equals("unranked")) {
			ghostTimeLineData = ghostDataDAO.timeLineList(u_rank);

			for (L_ghosttimeline timeLineData : ghostTimeLineData) {
				JSONObject ghostTimeLineObject = new JSONObject();

				ghostTimeLineObject.put("g_idx", timeLineData.getG_idx());
				ghostTimeLineObject.put("g_rank", timeLineData.getG_rank());
				ghostTimeLineObject.put("g_timestamp", timeLineData.getG_timestamp());
				ghostTimeLineObject.put("g_timegold", timeLineData.getG_timegold());
				ghostTimeLineObject.put("g_timedamage", timeLineData.getG_timedamage());
				ghostTimeLineObject.put("g_jmkill", timeLineData.getG_jmkill());
				ghostTimeLineObject.put("g_mkill", timeLineData.getG_mkill());
				ghostTimeLineObject.put("g_teamposition", timeLineData.getG_teamposition());

				ghostTimeDataArray.put(ghostTimeLineObject);
			}
		} else {
			u_rank = "SILVER";
			ghostTimeLineData = ghostDataDAO.timeLineList(u_rank);

			for (L_ghosttimeline timeLineData : ghostTimeLineData) {
				JSONObject ghostTimeLineObject = new JSONObject();

				ghostTimeLineObject.put("g_idx", timeLineData.getG_idx());
				ghostTimeLineObject.put("g_rank", timeLineData.getG_rank());
				ghostTimeLineObject.put("g_timestamp", timeLineData.getG_timestamp());
				ghostTimeLineObject.put("g_timegold", timeLineData.getG_timegold());
				ghostTimeLineObject.put("g_timedamage", timeLineData.getG_timedamage());
				ghostTimeLineObject.put("g_jmkill", timeLineData.getG_jmkill());
				ghostTimeLineObject.put("g_mkill", timeLineData.getG_mkill());
				ghostTimeLineObject.put("g_teamposition", timeLineData.getG_teamposition());

				ghostTimeDataArray.put(ghostTimeLineObject);
			}
		}

		jsonData.put("ghostTimeDataArray", ghostTimeDataArray);

		response.setContentType("application/json");
		response.getWriter().write(jsonData.toString());

		return null;
	}

}
