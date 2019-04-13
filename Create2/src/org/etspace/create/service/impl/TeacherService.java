package org.etspace.create.service.impl;
import org.etspace.create.service.ITeacherService;
import org.etspace.create.dao.ITeacherDAO;
import org.etspace.create.vo.Teacher;
import java.util.List;
	public class TeacherService implements ITeacherService {
		private ITeacherDAO teacherDAO;
		public void setTeacherDAO(ITeacherDAO teacherDAO){
			this.teacherDAO=teacherDAO;
		}
		public void save(Teacher teacher){
		teacherDAO.save(teacher);
		}
		public void delete(String name){
		teacherDAO.delete(name);
		}
		public void update(Teacher teacher){
		teacherDAO.update(teacher);
			}
		public Teacher find(String name){
		return teacherDAO.find(name);
		}
		public List findAll(int pageNow,int pageSize,Teacher teacher){
		return teacherDAO.findAll(pageNow, pageSize, teacher);
		}
		public int findAllSize(Teacher teacher){
		return teacherDAO.findAllSize(teacher);
		}
		public List getAll(){
		return teacherDAO.getAll();
		}
		public boolean exist(String name){
		return teacherDAO.exist(name);
		}
	}
