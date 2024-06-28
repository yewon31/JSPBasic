package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DepartmentDAO {
	//DAO는 불필요하게 여러개 만들 필요가 없기 때문에 객체가 한개만 생성되도록 
	//singleton형식으로 설계
	
	//1. 나자신의 객체를 1개 생성하고, private을 붙임
	private static DepartmentDAO instance = new DepartmentDAO();
	
	//2. 직접 객체를 생성할 수 없도록 생성자에도 private을 붙임
	private DepartmentDAO() {
		//커넥션풀에 사용할 객체를 얻어옴
		try {
			InitialContext init = new InitialContext(); //시작설정 객체
			ds = (DataSource)init.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
			System.out.println("커넥션 풀 에러");
		}
	}
	//3. 객체 생성을 요구할때 getter메서드를 사용해서 1번의 객체를 반환
	public static DepartmentDAO getInstance() {
		return instance;
	}
	
//	데이터베이스연결
//	public String url = "jdbc:oracle:thin:@localhost:1521:xe";
//	public String uid = "HR";
//	public String upw = "HR";
	
	//커넥션 풀 객체정보
	private DataSource ds;
	
	
	/**
	 * 부서명을 조회하는 메서드
	 */
	public ArrayList<DepartmentDTO> getList() {
		
		ArrayList<DepartmentDTO> list = new ArrayList<>();
		
		String sql = "SELECT * FROM DEPARTMENTS WHERE MANAGER_ID IS NOT NULL";
		
		Connection conn = null; //연결객체
		PreparedStatement pstmt = null; //sql문실행 객체
		ResultSet rs = null; //결과처리 객체
		
		try {
			//Class.forName("oracle.jdbc.OracleDriver"); //드라이버 호출
			//conn = DriverManager.getConnection(url, uid, upw); //conn객체
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(); //select구문의 실행
			
			while(rs.next()) { //다음이 있으면 true
				
				//1행에 대한 처리
				int departmentId = rs.getInt("department_id"); //컬럼명
				String departmentName = rs.getString("department_name");
				int managerId = rs.getInt("manager_id");
				int locaionId = rs.getInt("location_id");
				
				//1행을 DTO에 저장
				DepartmentDTO dto = new DepartmentDTO(departmentId, departmentName, managerId, locaionId);
				
				//DTO를 리스트에 추가
				list.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn != null) conn.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e2) {
			}
		}
		return list;
	}
	
	/**
	 * getDepartment
	 * 부서번호에 따라 부서정보를 조회하는 메서드
	 */
	public DepartmentDTO getDepartment(int department_id) {
		
		ArrayList<DepartmentDTO> list = new ArrayList<>();
		String sql = "SELECT * FROM DEPARTMENTS WHERE DEPARTMENT_ID = ?";
		Connection conn = null; //연결객체
		PreparedStatement pstmt = null; //sql문실행 객체
		ResultSet rs = null; //결과처리 객체
		DepartmentDTO dto = null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, department_id); //?값 채움
			rs = pstmt.executeQuery(); //select구문의 실행
			
			if(rs.next()) { //다음이 있으면 true
				
				//1행에 대한 처리
				int departmentId = rs.getInt("department_id"); //컬럼명
				String departmentName = rs.getString("department_name");
				int managerId = rs.getInt("manager_id");
				int locaionId = rs.getInt("location_id");
				
				//1행을 DTO에 저장
				dto = new DepartmentDTO(departmentId, departmentName, managerId, locaionId);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn != null) conn.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e2) {
			}
		}
		return dto;
	
	}
}
