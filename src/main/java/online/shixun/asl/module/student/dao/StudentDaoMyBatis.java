/*****************************************************************************
 * Copyright (c) 2016, www.qingshixun.com
 *
 * All rights reserved
 *
*****************************************************************************/
package online.shixun.asl.module.student.dao;

import java.util.List;

import online.shixun.asl.core.MyBatisRepository;
import online.shixun.asl.dto.StudentDTO;

@MyBatisRepository
public interface StudentDaoMyBatis {

	/**
	 * 获取学生列表
	 * @return
	 */
	List<StudentDTO> getStudents();
	
	List<StudentDTO> getJavaStudents();
	
	List<StudentDTO> getDataStudents();
	List<StudentDTO> getTestStudents();
	List<StudentDTO> getWebStudents();
	
	List<StudentDTO> getMaleStudents();
	List<StudentDTO> getFemaleStudents();
	
	
	/**
	 * 新增
	 * 
	 */
	void saveStudent(StudentDTO student);
	
}
