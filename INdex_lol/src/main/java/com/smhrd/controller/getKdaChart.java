package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

import com.smhrd.dao.L_champimgDAO;
import com.smhrd.dao.L_userdataDAO;
import com.smhrd.entity.L_champimg;
import com.smhrd.entity.L_userdata;

public class getKdaChart implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int allkill = 0;
		int alldeath = 0;
		int allassist = 0;
		int wincnt = 0;
		int losecnt = 0;
		double K = 0;
		double D = 0;
		double A = 0;
		int winlose = 0;
		int totalWinloseCnt = 0;

		String userId = request.getParameter("userId");
		L_userdataDAO userDataDAO = new L_userdataDAO();;
		List<L_userdata> userdataDesc = userDataDAO.userdataDesc(userId);
		JSONObject jsonData = new JSONObject();

		if (userdataDesc != null && !userdataDesc.isEmpty()) {
			System.out.println("if문 안에 들어와버렸습니다.");

			// 승률
			for (int i = 0; i < userdataDesc.size(); i++) {
				if (userdataDesc.get(i).getU_winlose().equals("true")) {
					wincnt += 1;
				} else if (userdataDesc.get(i).getU_winlose().equals("false")) {
					losecnt += 1;
				}
				System.out.println(userdataDesc.get(i).getU_winlose());

			}
			winlose = (int) ((wincnt / (double) (wincnt + losecnt)) * 100);
			totalWinloseCnt = userdataDesc.size();
			
			
			// 총 전적 k/d/a 평균 , 평점 평균
			for (int i = 0; i < userdataDesc.size(); i++) {
				allkill += userdataDesc.get(i).getU_kill();
				alldeath += userdataDesc.get(i).getU_death();
				allassist += userdataDesc.get(i).getU_assist();
			}
			K = Math.round(allkill / (double) userdataDesc.size() * 10) / 10.0;
			D = Math.round(alldeath / (double) userdataDesc.size() * 10) / 10.0;
			A = Math.round(allassist / (double) userdataDesc.size() * 10) / 10.0;
			// Math.round((K + A) / D * 10) / 10.0; ajax에서 평균내주기

			jsonData.put("K", K);
			jsonData.put("D", D);
			jsonData.put("A", A);

			jsonData.put("winlose", winlose);
			jsonData.put("wincnt", wincnt);
			jsonData.put("losecnt", losecnt);
			jsonData.put("totalWinloseCnt", totalWinloseCnt);

			System.out.println(K);
			System.out.println(D);
			System.out.println(A);
			System.out.println(winlose);
			System.out.println(wincnt);
			System.out.println(losecnt);
			// Add more data to the JSON object as needed

			// Convert your Array data to a JSON array

			// Set the response type and write the JSON data
			response.setContentType("application/json");
			response.getWriter().write(jsonData.toString());
		} else {

			jsonData.put("K", 0);
			jsonData.put("D", 0);
			jsonData.put("A", 0);
			jsonData.put("winlose", 0);
			jsonData.put("wincnt", 0);
			jsonData.put("losecnt", 0);
			jsonData.put("totalWinloseCnt", totalWinloseCnt);

			response.setContentType("application/json");
			response.getWriter().write(jsonData.toString());

		}

		return null;
	}
}
