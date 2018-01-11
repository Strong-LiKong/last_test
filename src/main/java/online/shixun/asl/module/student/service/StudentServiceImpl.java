/*****************************************************************************
 * Copyright (c) 2016, www.qingshixun.com
 *
 * All rights reserved
 *
*****************************************************************************/
package online.shixun.asl.module.student.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import online.shixun.asl.dto.StudentDTO;
import online.shixun.asl.module.student.dao.StudentDaoMyBatis;

@Service
public class StudentServiceImpl {

	@Autowired
	private StudentDaoMyBatis studentDao;

	public List<StudentDTO> getStudents() {
		return studentDao.getStudents();

	}
	
	public void saveStudent(StudentDTO student){
		
		studentDao.saveStudent(student);
	}
}
