package com.test.user.mypage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author 신수진
 * 마이페이지 > 회원정보수정 > 회원탈퇴 페이지
 */
@WebServlet("/user/mypage/info_leave.do")
public class Info_Leave extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/mypage/info_leave.jsp");
		dispatcher.forward(req, resp);
		
	}

}
