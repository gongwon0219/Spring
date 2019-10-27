package com.kgitbank.mvc02;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class MemberController {

	//싱글톤 디자인 패턴
	@Autowired
	MemberDAO dao;
	
	@RequestMapping("insert")
	public void insert(String id, String pw, String name, String tel) throws Exception {
		System.out.println("insert 요청됨");
		System.out.println("입력한 id: "+id);
		System.out.println("입력한 pw: "+pw);
		System.out.println("입력한 name: "+name);
		System.out.println("입력한 tel: "+tel);
		dao.insert(id, pw, name, tel);
	}
	
	@RequestMapping("select")
	public void select(String id, Model model) throws Exception {
		System.out.println("select 요첨됨");
		System.out.println("검색할 ID는 "+id);
		MemberDTO dto2 = dao.select(id);
		//Model객체는 views 까지만 값을 넘기고 싶을 때 사용.(session과 유사하지만, 더 좁다.)
		model.addAttribute("dto2",dto2);
	}
	
	@RequestMapping("delete")
	public void delete(String id) throws Exception {
		System.out.println("delete 요청됨");
		System.out.println("삭제할 ID는 "+id);
		dao.delete(id);
	}
	
}
