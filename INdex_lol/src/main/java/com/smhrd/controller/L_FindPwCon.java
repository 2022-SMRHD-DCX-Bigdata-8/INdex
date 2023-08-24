package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.L_userDAO;
import com.smhrd.entity.L_user;

public class L_FindPwCon implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("u_name");
		String id = request.getParameter("u_id");
		String email = request.getParameter("u_email");
		
		L_user l_user = new L_user();
		l_user.setU_name(name);
		l_user.setU_id(id);
		l_user.setU_email(email);
		
		L_userDAO dao = new L_userDAO();
		L_user result = dao.pwfind(l_user);
		
		String url ="";
		if(result != null) {
			System.out.println("패스워드찾기 성공");
			url = "redirect:/L_login.do";
		}else {
			System.out.println("패스워드찾기 실패");
			url = "redirect:/L_find.do";
		}
		
		return url;
		
	}

}
