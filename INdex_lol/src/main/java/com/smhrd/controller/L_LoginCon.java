package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.dao.L_champimgDAO;
import com.smhrd.dao.L_userDAO;
import com.smhrd.dao.L_userdataDAO;
import com.smhrd.entity.L_champimg;
import com.smhrd.entity.L_user;
import com.smhrd.entity.L_userdata;

public class L_LoginCon implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		
		L_user l_user = new L_user();
		l_user.setU_id(u_id);
		l_user.setU_pw(u_pw);
		

		L_userdata l_userdata = new L_userdata();
		l_userdata.setU_id(u_id);
		
		
		u_id = l_user.getU_id();
		
		L_champimgDAO cidao= new L_champimgDAO();
		L_userDAO dao = new L_userDAO();
		L_userdataDAO ud_dao = new L_userdataDAO();
		L_user user = dao.login(l_user);
		L_champimg l_champimg = new L_champimg();

		List<L_userdata> userdata = ud_dao.udview(u_id);
		List<L_userdata> userdataDesc = ud_dao.userdataDesc(u_id);
		List<L_userdata> champDesc = ud_dao.champDesc(u_id);
		// champimg 필요없어질수도있음
		List<L_champimg> champimg = cidao.champImg();
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		

		String url = "";

		if (user != null) {

			System.out.println("로그인성공");

			
			session.setAttribute("user", user);
			session.setAttribute("userdata", userdata);
			session.setAttribute("userdataDesc", userdataDesc);
			session.setAttribute("champDesc", champDesc);
			session.setAttribute("champimg", champimg);
			url = "redirect:/goMain.do";
			return url;

		} else {
			
			System.out.println("실패");
			out.print("false");
			
		}

		return null;
	}

}
