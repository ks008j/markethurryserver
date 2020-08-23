package com.test.user.customercenter;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/user/customercenter/orderlistpopup.do")
public class OnebyoneInquiryPopup extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String seq = (String) session.getAttribute("seq");
		
		CustomercenterDAO dao = new CustomercenterDAO();
		ArrayList<OnebyoneInquiryDTO> list = dao.getOBOOrderlist(seq);
		
		req.setAttribute("list", list);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/customercenter/orderlistpopup.jsp");
		dispatcher.forward(req, resp);

	}
}
