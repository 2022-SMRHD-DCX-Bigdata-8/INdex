package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.L_userDAO;
import com.smhrd.entity.L_user;

public class L_JoinCon implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		
		String u_name = request.getParameter("u_name");
		String u_email = request.getParameter("u_email");
		String u_pw = request.getParameter("u_pw");
		String u_nick = request.getParameter("u_nick");
		String u_tel = request.getParameter("u_tel");
		String u_lolcd = request.getParameter("u_lolcd");
		
		L_user l_user = new L_user(u_name, u_email, u_pw, u_nick, u_lolcd, u_tel);

		L_userDAO dao = new L_userDAO();
		int cnt = dao.join(l_user);
		
		if(cnt>0) {
			System.out.println("회원가입완료");
		}else {
			System.out.println("회원가입실패");
		}
		
		return "redirect:/goLogin.do";
	}

}
