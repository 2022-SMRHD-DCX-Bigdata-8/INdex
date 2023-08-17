package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.dao.L_userDAO;
import com.smhrd.entity.L_user;

public class JoinTestController implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String pw = request.getParameter("password");
		String lolNick = request.getParameter("lolNickname");
		HttpSession session = request.getSession();
		L_user member = new L_user();
		L_userDAO dao = new L_userDAO();

		try {
			member.setU_email(email);
			member.setU_pw(pw);
			member.setU_nick(lolNick);
			member.setU_tel(tel);
			member.setU_name(name);

			System.out.printf("Email: %s, 비밀번호: %s, LoL 닉네임: %s\n", email, pw, lolNick);
			// API 호출 및 고유 id 찾아오는 로직
			String puuid = ApiUtils.getLolpuuid(lolNick);
			member.setU_lolcd(puuid);
			System.out.println(puuid);

			member = new L_user(email, pw, lolNick, puuid, name, tel);
			System.out.println(member);

			// 데이터베이스에 저장
			int cnt = dao.join(member);

			if (cnt > 0) {
				// 회원가입 성공
				return "main";
			} else {
				
				
				
				return "main";
			}

		} catch (Exception e) {
			
				e.printStackTrace();
				request.setAttribute("apiError", "API 호출에 실패했습니다. 닉네임을 확인해주세요.");
				session.setAttribute("user", member);
				
			return "main";
		}
	
	}

}
