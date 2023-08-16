package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.L_userDAO;
import com.smhrd.entity.L_user;

public class JoinTestController implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String pw = request.getParameter("password");
		String lolNick = request.getParameter("lolNickname");
		L_user member = new L_user();
		L_userDAO dao = new L_userDAO();
		
		

		try {
			// API 호출 및 고유 id 찾아오는 로직
			String puuid = ApiUtils.getLolpuuid(lolNick);
			member.setU_EMAIL(email);
			member.setU_PW(pw);
			member.setU_NICK(lolNick);
			member.setU_LOLCD(puuid);
			member = new L_user(email,pw,lolNick,puuid);

			// 데이터베이스에 저장
			int cnt = dao.join(member);

			if(cnt > 0) {
				
				// 회원가입 완료 페이지로 이동 
				response.sendRedirect("main.jsp");
			}else {
				System.out.println("회원가입실패");
				response.sendRedirect("main.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
			// 에러 처리 로직
		}
		return null;
	}

}
