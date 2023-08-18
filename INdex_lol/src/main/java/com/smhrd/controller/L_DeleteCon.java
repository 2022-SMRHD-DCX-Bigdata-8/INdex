package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.dao.L_userDAO;
import com.smhrd.entity.L_user;

public class L_DeleteCon implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		
		String pw = request.getParameter("pw");
		
		HttpSession session = request.getSession();
		
		L_user user = (L_user)session.getAttribute("user");
		
		String id = user.getU_id();
		System.out.println(id);
		
		L_user member = new L_user();
		member.setU_id(id);
		member.setU_pw(pw);
		
		
		
		L_userDAO dao = new L_userDAO();

		try {
			
			int cnt = dao.delete(member);
			
			
			if (cnt > 0) {
				// 회원탈퇴 성공
				System.out.println("탈퇴 성공");
			
			} else {
				
				
				System.out.println("탈퇴 실패");
				
			}

		} catch (Exception e) {
			e.printStackTrace();
							
		}
				
		return "L_login";
		
		
	}

}
