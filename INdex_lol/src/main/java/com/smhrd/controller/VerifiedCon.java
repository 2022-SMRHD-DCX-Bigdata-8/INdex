package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class VerifiedCon implements L_Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		String num = request.getParameter("verified");
		int verifiednum = Integer.parseInt(num);
		GmailSend ran = new GmailSend();
		
		int verificationCode = (int)session.getAttribute("verificationCode");
		
		System.out.println("인증Con verifiednum"+verifiednum);
		System.out.println("인증Con verificationCode"+verificationCode);
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		if(verifiednum == verificationCode) {
			System.out.println("인증성공");
			out.print("true");
		}else {
			System.out.println("인증실패");
			out.print("false");
		}
		return null;
	}

}
