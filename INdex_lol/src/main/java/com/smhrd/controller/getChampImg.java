package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.smhrd.dao.L_champimgDAO;
import com.smhrd.entity.L_champimg;

public class getChampImg implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		L_champimgDAO cidao = new L_champimgDAO();
		
		JSONObject jsonData = new JSONObject();

		List<L_champimg> champimg = cidao.champImg();

		JSONArray champImgArray = new JSONArray();
		System.out.println("챔프이미지 가져오는 곳");

		// champImg 리스트에서 L_champimg 객체를 JSON 형식으로 변환하여 배열에 추가
		for (L_champimg champImg : champimg) {
			JSONObject champImgData = new JSONObject();
			champImgData.put("championName",champImg.getChamp_nick());
			champImgData.put("championImg", champImg.getChamp_img());
			champImgArray.put(champImgData);

		}

		response.setContentType("application/json");
		response.getWriter().write(champImgArray.toString());

		return null;
	}

}
