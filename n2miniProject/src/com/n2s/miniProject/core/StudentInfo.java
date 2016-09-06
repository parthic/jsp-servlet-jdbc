package com.n2s.miniProject.core;

import com.n2s.miniProject.StudentDetail;

public interface StudentInfo {
	public int createStudentDetail(StudentDetail studentDetail);
	public boolean updateStudentDetail(StudentDetail studentDetail);
	public StudentDetail getStudentDetail(int studentId);
	public Boolean deleteStudentDetail(int studentId);
	

}
