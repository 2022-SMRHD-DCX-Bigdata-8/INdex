package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.dao.L_userDAO;
import com.smhrd.entity.L_user;

public class IdCheckCon implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("joinId");
		
		L_userDAO dao = new L_userDAO();
		L_user result = dao.idCheck(id);

		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();

		if (result == null) {
			out.print("true");
		} else {
			out.print("false");
		}

		return null;
	}

}
