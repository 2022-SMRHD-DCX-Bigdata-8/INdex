package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.L_userDAO;
import com.smhrd.entity.L_user;

public class L_FindIdCon implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String u_name = request.getParameter("u_name");
		String u_tel = request.getParameter("u_tel");
		
		L_user l_user = new L_user();
		l_user.setU_name(u_name);
		l_user.setU_tel(u_tel);
		
		L_userDAO dao = new L_userDAO();
		L_user result = dao.idfind(l_user);
		
		String url ="";
		if(result != null) {
			System.out.println("아이디찾기 성공");
			url = "redirect:/L_login.do";
		}else {
			System.out.println("아이디찾기 실패");
			url = "redirect:/L_find.do";
		}
		return null;
	}

}
