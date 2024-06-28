package com.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.test") //요청경로
public class TestController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public TestController() {
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 3. 요청 분기
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI(); // ip, port 제외
		String path = request.getContextPath(); // 프로젝트 식별 이름
		String command = uri.substring(path.length());
		System.out.print(command);
		
		if(command.equals("/controller/signup.test") ) {
			// 회원가입
		} else if(command.equals("/controller/login.test") ) {
			// 로그인
		}
	}

}
