package com.kh.checkmate.board.sharingInformation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class sharingInformationController {
	
	@RequestMapping("list.si")
	public String selectList(@RequestParam(value="cpage",defaultValue="1") int currentPage, Model model) {
		
		System.out.println("hi");
		
		return "board/sharingInformation/siListView";
		
	}
	
}
