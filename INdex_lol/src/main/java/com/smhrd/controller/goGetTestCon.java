package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

public class goGetTestCon implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();

		String summonerName = request.getParameter("summonerName");
		String apiKey = "RGAPI-56fcce04-30ba-498a-b745-e5938782cb20"; // 실제 API 키로 대체

		String apiUrl = "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/" + summonerName;

//		try {
//			JSONObject summonerInfo = ApiUtils.getSummonerInfo(apiUrl, apiKey);
//			String name = summonerInfo.getString("name");
//            int puuid = summonerInfo.getInt("puuid");
//            String accountId = summonerInfo.getString("accountId");
//			
//			out.println(summonerInfo);
//		} catch (Exception e) {
//			e.printStackTrace();
//			out.println(new JSONObject().put("error", "Error fetching summoner info"));
//		}
		return null;
	}

}
