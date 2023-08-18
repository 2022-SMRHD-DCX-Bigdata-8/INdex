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
		String pw = request.getParameter("joinPw");
		String id = request.getParameter("joinId");
		String lolNick = request.getParameter("lolNickname");

		HttpSession session = request.getSession();

		L_user member = new L_user();

		L_userDAO dao = new L_userDAO();

		try {

			// API 호출 및 고유 id,rank 찾아오는 로직
			member = ApiUtils.getLolpuuid(lolNick);
			String puuid = member.getU_lolcd();
			String lolkrcd = member.getU_lolkrcd();
			String rank = ApiUtils.getRank(lolkrcd);

			member.setU_email(email);
			member.setU_pw(pw);
			member.setU_nick(lolNick);
			member.setU_name(name);
			member.setU_id(id);
			member.setU_rank(rank);

			
	
			member = new L_user(id, email, pw, lolNick, puuid, name, rank, lolkrcd);
			System.out.println(member);

			// 데이터베이스에 저장
			int cnt = dao.join(member);

			if (cnt > 0) {
				// 회원가입 성공
				return "L_login";
			} else {

				return "L_login";
			}

		} catch (Exception e) {

			e.printStackTrace();
			request.setAttribute("apiError", "API 호출에 실패했습니다. 닉네임을 확인해주세요.");
			session.setAttribute("user", member);

			return "L_login";
		}

	}

}
