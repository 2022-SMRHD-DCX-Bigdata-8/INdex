package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.dao.L_userDAO;
import com.smhrd.entity.L_user;

public class L_UpdateCon implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		L_user user = (L_user)session.getAttribute("user");
		
		String u_email = user.getU_email();
		String u_pw = request.getParameter("u_pw");
		String u_nick = request.getParameter("u_nick");
		String u_tel = request.getParameter("u_tel");
		
		L_user l_user = new L_user();
		l_user.setU_email(u_email);
		l_user.setU_pw(u_pw);
		l_user.setU_nick(u_nick);
		l_user.setU_tel(u_tel);
		
		L_userDAO dao = new L_userDAO();
		int cnt = dao.update(l_user);
		
		
		
		return "redirect:/goLogin.do";
	}

}
