package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.dao.L_userDAO;
import com.smhrd.entity.L_user;

public class L_LoginCon implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		
		
		L_user l_user = new L_user();
		l_user.setU_id(u_id);
		l_user.setU_pw(u_pw);
		
		L_userDAO dao = new L_userDAO();
		L_user result = dao.login(l_user);
		
		String url = "";
		
		if(result != null) {
			
			System.out.println("로그인성공");
			
			HttpSession session = request.getSession();
			session.setAttribute("user", result);
			
			url = "redirect:/goMain.do";
			
		}else {
			System.out.println("실패");
			url = "redirect:/goLogin.do";
		}
		
		return url;
	}
	

}
