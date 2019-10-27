package com.kgitbank.mvc02;

public class MemberDTO {
	
	//글로벌 변수(자동초기화, null로 초기화)
	
	private String id; //id는 null 값
	private String pw;
	private String name;
	private String tel;
	
	
	//getter
	public String getId() {
		return id;
	}
	//setter
	public void setId(String id) { //이 상태의 id는 쓰레기값
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	
}
