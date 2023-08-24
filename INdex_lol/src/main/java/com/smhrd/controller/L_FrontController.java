package com.smhrd.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// FrontController 디자인패턴
// 단 한개의 서블릿(FrontController)만 사용
// == 모든 요청을 단 하나의 서블릿으로 처리
// *.do : .do로 끝나는 모든 요청을 받겠다.
@WebServlet("*.do")
public class L_FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// HashMap 자료구조
	// python의 dict와 유사 : KEY - VALUE 짝지어서 저장, KEY를 이용해서 조회
	private HashMap<String, L_Controller> handler;

	@Override
	public void init() throws ServletException {
		// Servlet이 메모리에 등록되었을 때 단 한번만 실행

		handler = new HashMap<String, L_Controller>();

		// HashMap에 데이터 집어넣기
		handler.put("/ajax.do", new L_AjaxCon());
		handler.put("/login.do", new L_LoginCon());
		handler.put("/goLogin.do", new L_GoLoginCon());
		handler.put("/Join.do", new JoinTestController());
		handler.put("/update.do", new L_UpdateCon());
		handler.put("/goUpdate.do", new L_GoUpdateCon());
		handler.put("/goFind.do", new L_GoFindCon());
		handler.put("/goMain.do", new L_GoMainCon());
		handler.put("/findid.do", new L_FindIdCon());
		handler.put("/findpw.do", new L_FindPwCon());
		handler.put("/champion.do", new L_GoChampionCon());
		handler.put("/newUserLogin.do", new NewUserLoginCon());
		handler.put("/logout.do", new L_LogoutCon());
		handler.put("/updatePw.do", new updatePw());
		
		
		handler.put("/delete.do", new L_DeleteCon());
		handler.put("/goDelete.do", new L_GoDeleteCon());

		// ajax
		handler.put("/eCheck.do", new EmailCheckCon()); //완
		handler.put("/nCheck.do", new NickCheckCon()); //완
		handler.put("/idCheck.do", new IdCheckCon()); //완
		handler.put("/kdaChart.do", new getKdaChart());//완료
		handler.put("/getBest5Chart.do", new getBest5Chart()); //완료
		handler.put("/getPlayDataList.do", new getPlayDataList()); //완료
		
		
		handler.put("/getRadar.do", new getRadarChart()); //완료
		handler.put("/getChampImg.do", new getChampImg()); //완료
		handler.put("/getGhostDataList.do", new getGhostDataList()); //완료
		handler.put("/getGhostTimeLineData.do", new getGhostTimeLineData()); // 사용자 랭크로 매칭,  완료
		handler.put("/getUserTimeLineData.do", new getUserTimeLinetData()); // matchcd로 매칭, 완료
		
		


		
		////test////////////////////////////////////////

		handler.put("/gmailSend.do", new GmailSend());
		handler.put("/getPlayData.do", new renewPlayDataCon());
		handler.put("/apiUtils.do", new ApiUtils());
		handler.put("/goGettest.do", new goGetTestCon());
		handler.put("/verified.do", new VerifiedCon());
		handler.put("/goTestMain.do", new goTestMainCon());

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

		L_Controller con = null;
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
				RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/" + url + ".jsp");
				rd.forward(request, response);
			}
		}
	}

}
