package com.kgitbank.mvc02;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

	public void insert(String id, String pw, String name, String tel) throws Exception {
	
		//자동 import ctrl + shift + o
		//Model(M)
		//1. 드라이버 설정
		Class.forName("com.mysql.jdbc.Driver");
		//View(V)
		System.out.println("1. 드라이버 설정 성공!");
		
		//2. DB 연결
		String url = "jdbc:mysql://localhost:3306/spring"; //연결할 DB
		String user = "root"; //id
		String password = "1234"; //pw
		Connection con = DriverManager.getConnection(url, user, password);
		System.out.println("2. DB 연결 성공!");
		
		//3. SQL 결정
		String sql = "insert into member values(?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, pw);
		ps.setString(3, name);
		ps.setString(4, tel);
		System.out.println("3. SQL 결정 성공!");
		
		//4. SQL 전송
		ps.executeUpdate();		
		System.out.println("4. SQL 전송 성공!");
	}
	
	
	public void delete(String id) throws Exception {
		
		//자동 import ctrl + shift + o
		//Model(M)
		//1. 드라이버 설정
		Class.forName("com.mysql.jdbc.Driver");
		//View(V)
		System.out.println("1. 드라이버 설정 성공!");
		
		//2. DB 연결
		String url = "jdbc:mysql://localhost:3306/spring"; //연결할 DB
		String user = "root"; //id
		String password = "1234"; //pw
		Connection con = DriverManager.getConnection(url, user, password);
		System.out.println("2. DB 연결 성공!");
		
		//3. SQL 결정
		String sql = "delete from member where id=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);
		System.out.println("3. SQL 결정 성공!");
		
		//4. SQL 전송
		ps.executeUpdate();		
		System.out.println("4. SQL 전송 성공!");
	}
	
	
	public MemberDTO select(String id) throws Exception {
		
		//자동 import ctrl + shift + o
		//Model(M)
		//1. 드라이버 설정
		Class.forName("com.mysql.jdbc.Driver");
		//View(V)
		System.out.println("1. 드라이버 설정 성공!");
		
		//2. DB 연결
		String url = "jdbc:mysql://localhost:3306/spring"; //연결할 DB
		String user = "root"; //id
		String password = "1234"; //pw
		Connection con = DriverManager.getConnection(url, user, password);
		System.out.println("2. DB 연결 성공!");
		
		//3. SQL 결정
		String sql = "select * from member where id=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);
		System.out.println("3. SQL 결정 성공!");
		
		//4. SQL 전송
		ResultSet rs = ps.executeQuery(); //read(select)
		MemberDTO dto2 = null;
		if(rs.next()) { //검색결과가 있는지 체크: true
			String gid = rs.getString(1); // 숫자는 컬럼의 번호
			String gpw = rs.getString(2);
			String gname = rs.getString(3);
			String gtel = rs.getString(4);
			
			System.out.println(gid);
			System.out.println(gpw);
			System.out.println(gname);
			System.out.println(gtel);
			dto2 = new MemberDTO();
			dto2.setId(gid);
			dto2.setPw(gpw);
			dto2.setName(gname);
			dto2.setTel(gtel);
			
		}
		System.out.println("4. SQL 전송 성공!");
		return dto2;
	}
	
}
