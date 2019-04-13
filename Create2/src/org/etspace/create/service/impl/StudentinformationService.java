package org.etspace.create.service.impl;
import org.etspace.create.dao.IStudentinformationDAO;
import org.etspace.create.vo.Studentinformation;
import org.etspace.create.service.IStudentinformationService;
import java.util.List;
public class StudentinformationService implements IStudentinformationService {
	private IStudentinformationDAO studentinformationDAO;
	public void setStudentinformationDAO(IStudentinformationDAO studentinformationDAO) {
		this.studentinformationDAO = studentinformationDAO;
	}
	public void save(Studentinformation studentinformation) {
		studentinformationDAO.save(studentinformation);
	}
	public void delete(String num) {
		studentinformationDAO.delete(num);
	}
	public void update(Studentinformation studentinformation) {
		studentinformationDAO.update(studentinformation);
	}
	public Studentinformation find(String num) {
		return studentinformationDAO.find(num);
	}
	public List findAll(int pageNow, int pageSize, Studentinformation studentinformation) {
		return studentinformationDAO.findAll(pageNow, pageSize, studentinformation);
	}
	public int findAllSize(Studentinformation studentinformation) {
		return studentinformationDAO.findAllSize(studentinformation);
	}
	public List getAll(){
		return studentinformationDAO.getAll();
	}
	public boolean exist(String num) {
		return studentinformationDAO.exist(num);
	}
}