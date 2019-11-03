package com.kgitbank.mvc05;

import java.sql.*;

import org.springframework.stereotype.Repository;

@Repository
public class BookMarkDAO_old {

	
	public void insert(BookMarkDTO dto) throws Exception { //업케스팅 자동, 다운케스팅 강제형변환
		// 1. DB 드라이버(커넥터 설정) -> pom.xml
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("1. 드라이버 설정 성공");
		
		// 2. DB 연결(DB주소(url), id, pw)
		String url = "jdbc:mysql://localhost:3306/spring";
		String user = "root";
		String password = "1234";		
		Connection conn = DriverManager.getConnection(url,user,password);
		System.out.println("2. DB 연결 성공");
		
		// 3. sql문 생성
		String sql = "insert into bookmark values(?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getName());
		ps.setString(3, dto.getSite());
		System.out.println("3. sql문 설정 성공");
		
		// 4. sql문 전송
		ps.executeUpdate();
		System.out.println("4. sql문 전송 성공");
		
		// 5. 검색인 경우에는 받은 데이터 처리
		
		
	}

}
