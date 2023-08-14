package com.smhrd.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


// FrontController 디자인패턴
// 단 한개의 서블릿(FrontController)만 사용
// == 모든 요청을 단 하나의 서블릿으로 처리
// *.do : .do로 끝나는 모든 요청을 받겠다.
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// HashMap 자료구조
	// python의 dict와 유사 : KEY - VALUE 짝지어서 저장, KEY를 이용해서 조회
	private HashMap<String, Controller> handler;
	
	@Override
	public void init() throws ServletException {
		// Servlet이 메모리에 등록되었을 때 단 한번만 실행
		
		handler = new HashMap<String, Controller>();
		
		// HashMap에 데이터 집어넣기
		// handler.put("/goMain.do", new GoMainCon());
		
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. 요청을 구분하기 위해서, 어떤 요청인지 알아내기
		// /Ex04/main.do
		String uri = request.getRequestURI();
		// /Ex04
		String cpath = request.getContextPath();

		// 슬라이싱
		String mapping = uri.substring(cpath.length());

		System.out.println(mapping);

		// ===========================================================================================
		String url = "";

		Controller con = null;
		// 2. 요청을 구분해서 알맞는 코드를 실행
		// HasHMap에서 저장되어 있는 POJO 하나 꺼내오기
		
		con = handler.get(mapping);
		
		if (con != null) {
			url = con.execute(request, response);
		}
		
		// ==========================================================================================
		
		// 3....
		if (url != null) {
			if (url.contains("redirect:/")) {
				// ["redirect", "goMain.do"]
				response.sendRedirect(url.split(":/")[1]);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/" + url + ".jsp");
				rd.forward(request, response);
			}
		}
	}

}
