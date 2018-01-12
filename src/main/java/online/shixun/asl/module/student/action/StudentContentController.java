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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import online.shixun.asl.dto.StudentDTO;
import online.shixun.asl.module.student.service.StudentServiceImpl;

@Controller
@RequestMapping("/student/content")
public class StudentContentController {

	@Autowired
	private StudentServiceImpl studentService;

	/**
	 * 新增权限页面
	 * 
	 * @return
	 */
	@RequestMapping("/add")
	public String main(Model model) {

		return "/student/content/add";
	}


	/**
	 * 保存
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public String save(@ModelAttribute StudentDTO student) {
		studentService.saveStudent(student);

		return "success";
	}

	
}
