package com.kgitbank.mvc05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookMarkController {
	
	@Autowired
	BookMarkDAO dao;
	
	@RequestMapping("insert")
	public void insert(BookMarkDTO bookMarkDTO) throws Exception { //()안에서 requestgetparameter 실행하고 set까지 한 상태인 BookMarkDTO생성
		System.out.println(bookMarkDTO.getId());
		System.out.println(bookMarkDTO.getName());
		System.out.println(bookMarkDTO.getSite());
		
		dao.insert(bookMarkDTO);
		
	}
	
	@RequestMapping("update")
	public void update(BookMarkDTO bookMarkDTO) {
		
		System.out.println(bookMarkDTO.getId());
		System.out.println(bookMarkDTO.getName());
		
		dao.update(bookMarkDTO);
		
	}
	
	@RequestMapping("delete")
	public void delete(BookMarkDTO bookMarkDTO) {
		
		System.out.println(bookMarkDTO.getId());
		
		dao.delete(bookMarkDTO);
		
	}

	@RequestMapping("selectOne")
	public void selectOne(BookMarkDTO bookMarkDTO, Model model) {
		
		System.out.println(bookMarkDTO.getId());
		
		BookMarkDTO dto = dao.selectOne(bookMarkDTO);
		model.addAttribute("result", dto);
		
	}
	
	@RequestMapping("selectAll")
	public void selectAll(Model model) {
		
		System.out.println("전체 검색 요청됨");
		List<BookMarkDTO> list = dao.selectAll();
		model.addAttribute("list", list);
		
	}
	
	
}
