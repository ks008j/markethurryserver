package com.test.user.mypage;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * 마이페이지의 나만의 레시피 새글 등록에서 사용자가 구매한 목록들을 불러올 수 있도록 DB데이터와 연동을 도와주는 클래스입니다.
 * @author 장소진
 *
 */
@WebServlet("/myrecipe_choiceFD.do")
public class Myrecipe_choiceFD extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		//한글유지
		req.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		//멤버번호 같이 보내기
		String mseq = (String) session.getAttribute("seq"); 
	
		MyRecipe_BoardDAO dao = new MyRecipe_BoardDAO();
		
		
		//목록가져오기
		ArrayList<Myrecipe_BoardDTO> list = dao.list(mseq);
		
		req.setAttribute("list",list);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/mypage/myrecipe_choiceFD.jsp");

		dispatcher.forward(req, resp);
		
	}

}
