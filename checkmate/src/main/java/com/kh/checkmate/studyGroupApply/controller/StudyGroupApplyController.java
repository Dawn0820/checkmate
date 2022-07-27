package com.kh.checkmate.studyGroupApply.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.checkmate.member.model.vo.Member;
import com.kh.checkmate.message.model.service.MessageService;
import com.kh.checkmate.studyGroup.model.service.StudyGroupService;
import com.kh.checkmate.studyGroupApply.model.service.StudyGroupApplyService;
import com.kh.checkmate.studyGroupApply.model.vo.StudyGroupApply;
import com.kh.checkmate.studyGroupMember.model.service.StudyGroupMemberService;

@Controller
public class StudyGroupApplyController {
	
	@Autowired
	private StudyGroupApplyService studyGroupApplyService;
	
	@Autowired
	private StudyGroupService studyGroupService;
	
	@Autowired
	private MessageService messageService;
	
	@Autowired
	private StudyGroupMemberService studyGroupMemberService;

	@RequestMapping("studyGroupApply.sga")
	public String studyGroupApply(StudyGroupApply studyGroupApply, HttpSession session,
			Model model) {
		Member member = (Member) session.getAttribute("loginUser");
		Map<String, Object> map = new HashMap<>();
		map.put("userNick", member.getUserNick());
		
		int result = studyGroupApplyService.insertStudyGroupApply(studyGroupApply);


		if (result > 0) {
			session.setAttribute("alertMsg", "스터디그룹 지원 성공");
			return "studyGroup/studyGroupList";
		} else {
			model.addAttribute("alertMsg", "스터디그룹 지원 실패");
			return "studyGroup/studyGroupList";
		}
	}
	
	@RequestMapping("acceptStudyGroup.sga")
	@ResponseBody
	public int acceptStudyGroup(@RequestParam(value = "sgaApplyNo") int sgaApplyNo, @RequestParam(value = "sgNo") int sgNo, HttpSession session) {
		Member member = (Member) session.getAttribute("loginUser");

		Map<String, Object> map = new HashMap<>();
		map.put("sgaApplyNo", sgaApplyNo);
		map.put("sgNo", sgNo);
		
		System.out.println(map);
		
		//SG_APPLY_STATUS = 'Y'로 변경
		int result = studyGroupApplyService.acceptStudyGroup(map);
		
		//StudyGroupMember에 추가
		int result1 = studyGroupMemberService.insertStudyGroupMember(map);
		
		//메세지 전송
		int message = messageService.sendAcceptMessage(map);

		return result;
	}
	
	@RequestMapping("rejectStudyGroup.sga")
	@ResponseBody
	public int rejectStudyGroup(@RequestParam(value = "sgaApplyNo") int sgaApplyNo, HttpSession session) {
		Member member = (Member) session.getAttribute("loginUser");

		Map<String, Object> map = new HashMap<>();

		map.put("sgaApplyNo", sgaApplyNo);

		//SG_APPLY_STATUS = 'N'로 변경
		int result = studyGroupApplyService.rejectStudyGroup(map);
		
		//메세지 전송
		int message = messageService.sendRejectMessage(map);

		return result;
	}
	
}
