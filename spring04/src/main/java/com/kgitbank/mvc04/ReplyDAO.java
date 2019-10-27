package com.kgitbank.mvc04;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAO {

	public void insert(String reply, String writer) throws Exception {
	
		
		Class.forName("com.mysql.jdbc.Driver");
		
		System.out.println("1. 드라이버 설정 성공!");
		
		String url = "jdbc:mysql://localhost:3306/spring"; //연결할 DB
		String user = "root"; //id
		String password = "1234"; //pw
		Connection con = DriverManager.getConnection(url, user, password);
		System.out.println("2. DB 연결 성공!");
		
		
		String sql = "insert into reply values(?, ?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, reply);
		ps.setString(2, writer);
		
		System.out.println("3. SQL 결정 성공!");
		
		
		ps.executeUpdate();		
		System.out.println("4. SQL 전송 성공!");
	}
	
	
	
	
}
