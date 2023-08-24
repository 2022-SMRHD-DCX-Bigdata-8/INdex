package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.L_userDAO;
import com.smhrd.entity.L_user;

public class updatePw implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		System.out.println("비번변경 들어왔니");
		String id = request.getParameter("u_id");
		String pw = request.getParameter("u_pw");
		
		System.out.println(id);
		System.out.println(pw);
		L_user l_user = new L_user();
		
		l_user.setU_id(id);
		l_user.setU_pw(pw);
		
		
		L_userDAO dao = new L_userDAO();
		int result = dao.updatePw(l_user);
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		System.out.println(pw);
		if(result > 0 ) {
			System.out.println("변경 성공");
			out.print("true");
		}else {
			System.out.println("변경 실패");
			out.print("false");
		
		}
		return null;
	}

}
