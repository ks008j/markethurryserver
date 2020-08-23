package com.test.user.product;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/user/product/productqnaok.do")
public class ProductQnaOk extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
//		HttpSession session = req.getSession();
		
		req.setCharacterEncoding("UTF-8");
		
		String title = req.getParameter("title");
		String content = req.getParameter("content");
//		String mseq = (String)session.getAttribute("seq");
		String pseq = req.getParameter("pseq");
		String img = req.getParameter("img");
		
		
		ProductDAO dao = new ProductDAO();
		
		InquiryDTO dto = new InquiryDTO();
		
		dto.setTitle(title);
		dto.setContent(content);
//		dto.setMseq(mseq);
		dto.setPseq(pseq);
		dto.setImg(img);
		
		
		int result = dao.addqna(dto);
		dao.close(); //DB 닫기
		
		//3.
		if (result ==1) {
			PrintWriter writer = resp.getWriter();
			writer.print("<html>");
			writer.print("<body>");
			writer.print("<script>");
			writer.print("alert('success');");
			writer.print("location.href='/mh/user/product/productdetail.do?seq=" + pseq + "';");
			writer.print("</script>");
			writer.print("</body>");
			writer.print("</html>");
			writer.close();
			
			
		} else {
			//글쓰기 실패
			PrintWriter writer = resp.getWriter();
			writer.print("<html>");
			writer.print("<body>");
			writer.print("<script>");
			writer.print("alert('failed'); history.back();");
			writer.print("</script>");
			writer.print("</body>");
			writer.print("</html>");
			writer.close();
		}
		
		
		
		
	}
	
}
