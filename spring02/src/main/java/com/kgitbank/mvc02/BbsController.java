package com.kgitbank.mvc02;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class BbsController {

	//ฝฬฑÛลๆ ต๐ภฺภฮ ฦะลฯ
	@Autowired
	BbsDAO dao;
	
	
	@RequestMapping("insert2")
	public void insert2(String id, String title, String content, String writer) throws Exception {
		System.out.println("insert ฟไรปตส");
		System.out.println("ภิทยวั id: "+id);
		System.out.println("ภิทยวั title: "+title);
		System.out.println("ภิทยวั content: "+content);
		System.out.println("ภิทยวั write: "+writer);
		dao.insert2(id, title, content, writer);
	}
	
	@RequestMapping("delete2")
	public void delete2(String id) throws Exception {
		System.out.println("delete ฟไรปตส");
		System.out.println(id+"ลปล๐ ตส");
		dao.delete2(id);
	}
	
	@RequestMapping("select2")
	public void select2(String id, Model model) throws Exception {
		System.out.println("select ฟไรปตส");
		BbsDTO dto4 = dao.select2(id);
		model.addAttribute("dto4", dto4);
	}
	
	
}
