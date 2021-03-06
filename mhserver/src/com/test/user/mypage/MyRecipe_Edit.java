package com.test.user.mypage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.user.myrecipe.RecipeDAO;
import com.test.user.myrecipe.RecipeDTO;



/**
 * 마이페이지의 나만의 레시피에서 글을 수정을 구현하도록 하며, myrecipe_edit.jsp와 연결되어 있는 클래스입니다.
 * @author 장소진
 *
 */
@WebServlet("/user/mypage/myrecipe_edit.do")
public class MyRecipe_Edit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		
		// 1. 수정할 레피시 번호 가져오기
		String seq = req.getParameter("seq");
		
		// 2. 글번호를 가지고 모든 내용 가져오기
		RecipeDAO rdao = new RecipeDAO();

		RecipeDTO rlist = rdao.get(seq);

		// 3. DTO를 JSP에게 전달하면서 호출하기
		req.setAttribute("rlist", rlist);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/mypage/myrecipe_edit.jsp");
		dispatcher.forward(req, resp);

	}

}
