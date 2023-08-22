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

import org.json.JSONArray;
import org.json.JSONObject;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.smhrd.entity.L_user;
import com.smhrd.entity.L_userdata;

// ApiUtils.java
public class ApiUtils implements L_Controller {

	// 수정중 건들지마시오

	private static final String API_KEY = "RGAPI-5f2c9f81-0579-44fe-bf70-056f95268e0b";
	private static final String API_BASED_UID_URL = "https://kr.api.riotgames.com";
	private static final String API_BASED_MATCH_URL = "https://asia.api.riotgames.com";

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	public static L_user getLolpuuid(String lolNick) throws Exception {

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

			L_user user = new L_user();

			JSONObject summonerInfo = new JSONObject(response.toString());
			String lolkrid = summonerInfo.getString("id");
			String puuid = summonerInfo.getString("puuid");
			System.out.println(lolkrid);
			
			return user;
		} else {
			throw new Exception("API 호출에 실패했습니다. 응답 코드: " + responseCode);
		}
	}

	public static String getRank(String lolkrcd) throws Exception {

		String latestRank = "";
		String apiUrl = API_BASED_UID_URL + "/lol/league/v4/entries/by-summoner/" + lolkrcd;

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

			JSONArray rankInfoArray = new JSONArray(response.toString());

			for (int i = 0; i < rankInfoArray.length(); i++) {
				JSONObject rankInfo = rankInfoArray.getJSONObject(i);
				System.out.print(rankInfo);
				if (rankInfo.has("tier")) {
					String tier = rankInfo.getString("tier");
					String rank = rankInfo.getString("rank");
					latestRank = tier + " " + rank;
					System.out.println(latestRank);
					break; // 가장 최근 데이터를 찾았으므로 루프 종료
				}
			}
			if (latestRank.isEmpty()) {
				latestRank = "unranked"; // 랭크 데이터가 하나도 없는 경우
			}
		} else {

			throw new Exception("API 호출에 실패했습니다. 응답 코드: " + responseCode);
		}
		return latestRank;// 예시로 puuid 추출
	}

	// Riot API 호출 및 랭크 데이터 가져오는 메서드

	public static List<L_userdata> getRankData(String lolcd) throws IOException {
		int COUNT = 5;
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
	
	// 테스트 끝내고 수정해줘야함
	public static List<String> getNewMemberMatchIds(String puuid) throws IOException {
		int COUNT = 19;
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


	public static List<String> getMatchIds(String puuid) throws IOException {
		int COUNT = 5;
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
					int userK = participant.get("kills").getAsInt();
					int userD = participant.get("deaths").getAsInt();
					int userA = participant.get("assists").getAsInt();
					int userDamage = participant.get("totalDamageDealtToChampions").getAsInt();
					int userPlaytime = participant.get("timePlayed").getAsInt();
					int userWardsPlaced = participant.get("wardsPlaced").getAsInt();
					int userWardsKilled = participant.get("wardsKilled").getAsInt();
					String userWinLose = participant.get("win").getAsString();
					String userChamp = participant.get("championName").getAsString();
					int minionKill = participant.get("totalMinionsKilled").getAsInt();
					String teamPosition = participant.get("teamPosition").getAsString();
					System.out.println(userGold);
					// L_userdata 객체에 매핑
					L_userdata userData = new L_userdata();
					userData.setU_id(userId);
					userData.setU_gold(userGold);
					userData.setU_level(userLevel);
					userData.setU_kill(userK);
					userData.setU_death(userD);
					userData.setU_assist(userA);
					userData.setU_damage(userDamage);
					userData.setU_playtime(userPlaytime);
					userData.setU_wardskill(userWardsKilled);
					userData.setU_wardsplaced(userWardsPlaced);
					userData.setU_winlose(userWinLose);
					userData.setU_champ(userChamp);
					userData.setU_matchcd(matchId);
					userData.setU_minionkill(minionKill);
					userData.setU_teamposition(teamPosition);
					userDataList.add(userData);
				}
			}
		}
		return userDataList;
	}
}
