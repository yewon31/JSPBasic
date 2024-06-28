package com.servlet;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
@WebServlet("/forward") //요청경로
public class ForwardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  public ForwardServlet() {}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// post요청에 대한 자바코드
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		// 다음 페이지에서 사용할 1회성 데이터를 request에 중간에 끼워넣음.
		request.setAttribute("name", "홍길동"); 
		// 자바에서 forward문법을 사용하는 방법
		RequestDispatcher dp = request.getRequestDispatcher("actionTag/forward_ex04.jsp");
		dp.forward(request, response); //
	}
}