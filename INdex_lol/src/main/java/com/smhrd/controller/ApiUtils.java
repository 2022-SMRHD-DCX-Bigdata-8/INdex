package com.smhrd.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;
import com.smhrd.entity.L_userdata;

// ApiUtils.java
public class ApiUtils implements L_Controller {

	// 수정중 건들지마시오

	private static final String API_KEY = "RGAPI-811a57a2-d560-406d-9613-6e931f54fa08";
	private static final String API_BASED_UID_URL = "https://kr.api.riotgames.com";
	private static final String API_BASED_MATCH_URL = "https://asia.api.riotgames.com";
	private static final int COUNT = 5;

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	public static String getLolpuuid(String lolNick) throws Exception {

		String apiUrl = API_BASED_UID_URL + "/lol/summoner/v4/summoners/by-name/" + lolNick;

		// API 호출 및 응답 데이터 처리
		URL url = new URL(apiUrl);
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		connection.setRequestMethod("GET");
		connection.setRequestProperty("X-Riot-Token", API_KEY);

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

	public static List<L_userdata> getRankData(String lolcd) throws IOException {
		String apiUrl = API_BASED_MATCH_URL + "/lol/match/v5/matches/by-puuid/" + lolcd
				+ "/ids?queue=420&type=ranked&start=0&count=" + COUNT;

		URL url = new URL(apiUrl);
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();

		connection.setRequestMethod("GET");
		connection.setRequestProperty("X-Riot-Token", API_KEY);
		connection.setRequestProperty("Accept", "application/json");

		StringBuilder response = new StringBuilder();

		try {
			BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));

			String line;
			while ((line = reader.readLine()) != null) {
				response.append(line);
			}
		} finally {
			connection.disconnect();
		}

		Gson gson = new Gson();
		List<L_userdata> userData = (List<L_userdata>) gson.fromJson(response.toString(), L_userdata.class);

		return userData;
	}

	public static List<String> getMatchIds(String puuid) throws IOException {
		String apiUrl = API_BASED_MATCH_URL + "/lol/match/v5/matches/by-puuid/" + puuid
				+ "/ids?queue=420&type=ranked&start=0&count=" + COUNT;

		URL url = new URL(apiUrl);
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();

		connection.setRequestMethod("GET");
		connection.setRequestProperty("X-Riot-Token", API_KEY);
		connection.setRequestProperty("Accept", "application/json");

		StringBuilder response = new StringBuilder();

		try {
			BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));

			String line;
			while ((line = reader.readLine()) != null) {
				response.append(line);
			}
		} finally {
			connection.disconnect();
		}

		Gson gson = new Gson();
		List<String> matchIds = gson.fromJson(response.toString(), new TypeToken<List<String>>() {
		}.getType());
		System.out.println(matchIds);
		System.out.println();

		return matchIds;
	}

	public static List<L_userdata> getPlayDataByMatchIds(String puuid, String userId, List<String> matchIds)
			throws IOException {
		List<L_userdata> userDataList = new ArrayList<>();

		for (String matchId : matchIds) {
			String apiUrl = API_BASED_MATCH_URL + "/lol/match/v5/matches/" + matchId;

			URL url = new URL(apiUrl);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");
			connection.setRequestProperty("X-Riot-Token", API_KEY);
			connection.setRequestProperty("Accept", "application/json");

			StringBuilder response = new StringBuilder();

			try {
				BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));

				String line;
				while ((line = reader.readLine()) != null) {
					response.append(line);
				}
			} finally {
				connection.disconnect();
			}

			Gson gson = new Gson();
			JsonObject jsonData = gson.fromJson(response.toString(), JsonObject.class);

			JsonObject info = jsonData.getAsJsonObject("info");
			JsonArray participants = info.getAsJsonArray("participants");
			

			for (JsonElement participantElement : participants) {
				JsonObject participant = participantElement.getAsJsonObject();
				String participantPuuid = participant.get("puuid").getAsString();
				System.out.println(participantPuuid);

				  if (participantPuuid.equals(puuid)) {
					
					System.out.println("if문 안에 들어왔습니다");

					int userGold = participant.get("goldEarned").getAsInt();
					int userLevel = participant.get("champLevel").getAsInt();
					String userK = participant.get("kills").getAsString();
					String userD = participant.get("deaths").getAsString();
					String userA = participant.get("assists").getAsString();
					int userDamage = participant.get("totalDamageDealtToChampions").getAsInt();
					int userPlaytime = participant.get("timePlayed").getAsInt();
					int userSigthScore = participant.get("wardsPlaced").getAsInt();
					String userWinLose = participant.get("win").getAsString();
					String userChamp = participant.get("championName").getAsString();
					String userKDA = userK + "/" + userD + "/" + userA;

					System.out.println(userGold);
					// L_userdata 객체에 매핑
					L_userdata userData = new L_userdata();
					userData.setU_id(userId);
					userData.setU_rank("null");
					userData.setU_gold(userGold);
					userData.setU_level(userLevel);
					userData.setU_kda(userKDA);
					userData.setU_damage(userDamage);
					userData.setU_playtime(userPlaytime);
					userData.setU_sigthscore(userSigthScore);
					userData.setU_winlose(userWinLose);
					userData.setU_champ(userChamp);
					userData.setU_matchcd(matchId);
					userDataList.add(userData);
				}
			}
		}
		return userDataList;
	}
}
