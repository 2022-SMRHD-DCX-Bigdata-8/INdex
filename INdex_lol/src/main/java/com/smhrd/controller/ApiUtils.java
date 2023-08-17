package com.smhrd.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.smhrd.entity.L_userdata;

// ApiUtils.java
public class ApiUtils implements L_Controller {
	
	// 수정중 건들지마시오

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	public static String getLolpuuid(String lolNick) throws Exception {

		String apiKey = "RGAPI-811a57a2-d560-406d-9613-6e931f54fa08"; // API 키
		String apiUrl = "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/" + lolNick;

		// API 호출 및 응답 데이터 처리
		URL url = new URL(apiUrl);
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		connection.setRequestMethod("GET");
		connection.setRequestProperty("X-Riot-Token", apiKey);

		int responseCode = connection.getResponseCode();
		if (responseCode == HttpURLConnection.HTTP_OK) {
			BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			String inputLine;
			StringBuilder response = new StringBuilder();

			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			in.close();

			JSONObject summonerInfo = new JSONObject(response.toString());
			return summonerInfo.getString("puuid"); // 예시로 puuid 추출
		} else {
			throw new Exception("API 호출에 실패했습니다. 응답 코드: " + responseCode);
		}
	}

	
	// Riot API 호출 및 랭크 데이터 가져오는 메서드
    public static L_userdata getRankData(String lolNick) {
        // 실제로는 Riot API를 호출하여 랭크 데이터를 가져오는 로직을 구현해야 합니다.
        // 예시로 랭크 데이터를 하드코딩하여 반환하는 코드를 작성하겠습니다.
        
    	L_userdata userData = new L_userdata();
    	
    	userData.setU_rank("Gold");
    	
    	
        
        return userData;
    }
	
	
}
