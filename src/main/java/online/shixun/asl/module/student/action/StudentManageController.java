/*****************************************************************************
 * Copyright (c) 2016, www.qingshixun.com
 *
 * All rights reserved
 *
*****************************************************************************/
package online.shixun.asl.module.student.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import online.shixun.asl.module.student.service.StudentServiceImpl;

@Controller
@RequestMapping("/student/manage")
public class StudentManageController {

	@Autowired
	private StudentServiceImpl studentService;
	
	
	@RequestMapping("/list")
	public String main(Model model) {
		model.addAttribute("students", studentService.getStudents());
		
		return "/student/manage/list";
	}
	
	
	@RequestMapping("/java")
	public String Java(Model model) {
		model.addAttribute("students", studentService.getJavaStudents());
		
		return "/student/manage/list";
	}
	
	@RequestMapping("/test")
	public String Test(Model model) {
		model.addAttribute("students", studentService.getTestStudents());
		
		return "/student/manage/list";
	}
	
	@RequestMapping("/web")
	public String Web(Model model) {
		model.addAttribute("students", studentService.getWebStudents());
		
		return "/student/manage/list";
	}
	
	@RequestMapping("/data")
	public String Data(Model model) {
		model.addAttribute("students", studentService.getDataStudents());
		
		return "/student/manage/list";
	}
	
	@RequestMapping("/male")
	public String Male(Model model) {
		model.addAttribute("students", studentService.getMaleStudents());
		
		return "/student/manage/list";
	}
	
	@RequestMapping("/female")
	public String Female(Model model) {
		model.addAttribute("students", studentService.getFemaleStudents());
		
		return "/student/manage/list";
	}
	
	
}
