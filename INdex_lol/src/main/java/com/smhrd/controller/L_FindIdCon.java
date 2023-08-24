package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.dao.L_userDAO;
import com.smhrd.entity.L_user;

public class L_FindIdCon implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String u_name = request.getParameter("u_name");
		String u_email = request.getParameter("u_email");
		
		HttpSession session = request.getSession();
		System.out.println("이부분인가요");
		
		L_user l_user = new L_user();
		l_user.setU_name(u_name);
		l_user.setU_email(u_email);
		
		System.out.println(l_user);
		
		L_userDAO dao = new L_userDAO();
		L_user result = dao.idfind(l_user);
		System.out.println(result);
		PrintWriter out = response.getWriter();

		String url ="";
		if(result != null) {
			System.out.println("아이디찾기 성공");
			session.setAttribute("l_user", l_user);
			out.print("true");
			url = "L_find";
			
		}else {
			System.out.println("아이디찾기 실패");
			out.print("false");
			url = "L_find";
		}
		return url;
	}

}
