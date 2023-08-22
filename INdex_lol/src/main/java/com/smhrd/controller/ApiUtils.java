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
import com.smhrd.dao.L_usertimelineDAO;
import com.smhrd.entity.L_user;
import com.smhrd.entity.L_userdata;
import com.smhrd.entity.L_usertimeline;

// ApiUtils.java
public class ApiUtils implements L_Controller {

	// 수정중 건들지마시오

	private static final String API_KEY = "RGAPI-105f443b-63a8-4bde-9b41-999930db4aac";
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
			user.setU_lolkrcd(lolkrid);
			user.setU_lolcd(puuid);

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
		int COUNT = 10;
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
		// 여기서 중복체크해
		for (String matchId : matchIds) {
			String apiUrl = API_BASED_MATCH_URL + "/lol/match/v5/matches/" + matchId;

			System.out.println(matchId);
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
				String participantPuuid = participant.has("puuid") ? participant.get("puuid").getAsString() : null;

				if (participantPuuid != null && participantPuuid.equals(puuid)) {
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
					String userWinLose = participant.has("win") ? participant.get("win").getAsString() : "";
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

	public static List<L_usertimeline> getTimestampDataByMatchIds(String puuid, String userId, List<String> matchIds)
			throws Exception {
		System.out.println("타임라인안으로 들어왔습니다.");
		List<L_usertimeline> userTimeList = new ArrayList<>();

		for (String matchId : matchIds) {
			List<int[]> filteredResults = getFilteredResultsFromMatchId(matchId, puuid);

			System.out.println(filteredResults);
			// Create L_usertimeline instance and set data
			for (int[] result : filteredResults) {
				L_usertimeline userTime = new L_usertimeline();
				userTime.setU_id(userId);
				userTime.setU_timestamp(result[0]);
				userTime.setU_timegold(result[1]);
				userTime.setU_timedamage(result[2]);
				userTime.setU_jmkill(result[3]);
				userTime.setU_mkill(result[4]);
				userTime.setU_matchcd(matchId);

				userTimeList.add(userTime);
			}
		}

		return userTimeList;
	}

	public static List<int[]> getFilteredResultsFromMatchId(String matchId, String puuid) throws Exception {
		
		L_usertimelineDAO usertimeDAO = new L_usertimelineDAO();
		
	    L_usertimelineDAO userTimeDAO = new L_usertimelineDAO();
	    if (userTimeDAO.checkExistingData(matchId) != null) {
	        System.out.println("이미 데이터가 존재합니다: " + matchId);
	        return new ArrayList<>(); // 이미 데이터가 존재하는 경우 빈 리스트 반환
	    }

		String matchApiUrl = API_BASED_MATCH_URL + "/lol/match/v5/matches/" + matchId + "/timeline?api_key=" + API_KEY;

		
		System.out.println("타임라인1분단위쪽들어옴");
		URL matchUrl = new URL(matchApiUrl);
		HttpURLConnection matchConnection = (HttpURLConnection) matchUrl.openConnection();
		matchConnection.setRequestMethod("GET");

		int matchResponseCode = matchConnection.getResponseCode();
		if (matchResponseCode == HttpURLConnection.HTTP_OK) {
			BufferedReader matchIn = new BufferedReader(new InputStreamReader(matchConnection.getInputStream()));
			String matchInputLine;
			StringBuilder matchResponse = new StringBuilder();

			while ((matchInputLine = matchIn.readLine()) != null) {
				matchResponse.append(matchInputLine);
			}
			matchIn.close();

			JSONObject matchInfo = new JSONObject(matchResponse.toString());
			JSONObject metadata = matchInfo.getJSONObject("metadata");
			JSONArray participants = metadata.getJSONArray("participants"); // Get participants array

			List<int[]> filteredResults = new ArrayList<>();

			// 필터링된 결과를 구하는 로직 추가
			JSONObject info = matchInfo.getJSONObject("info");
			JSONArray frames = info.getJSONArray("frames");
			for (int i = 0; i < frames.length(); i++) {
				JSONObject frame = frames.getJSONObject(i);
				JSONObject participantFrames = frame.getJSONObject("participantFrames");
				int timestamp = frame.getInt("timestamp") / 60000; // 1분 단위로 변환

				if (timestamp <= 20) {
				int participantIndex = -1;
				for (int j = 0; j < participants.length(); j++) {
					if (participants.getString(j).equals(puuid)) {
						participantIndex = j;
						break;
					}
				}

				if (participantIndex != -1) {
					JSONObject matchingParticipantFrame = participantFrames
							.getJSONObject(String.valueOf(participantIndex + 1));
					int gold = matchingParticipantFrame.getInt("currentGold");
					int damage = matchingParticipantFrame.getJSONObject("damageStats")
							.getInt("totalDamageDoneToChampions");
					int jungleMinionsKilled = matchingParticipantFrame.getInt("jungleMinionsKilled");
					int minionsKilled = matchingParticipantFrame.getInt("minionsKilled");

					// 필터링된 결과를 리스트에 추가
					filteredResults.add(new int[] { timestamp, gold, damage, jungleMinionsKilled, minionsKilled });
				}
				}
			}
			return filteredResults;
		} else {
			throw new Exception("API 호출에 실패했습니다. 응답 코드: " + matchResponseCode);
		}
	}

}
