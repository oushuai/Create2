package org.etspace.create.service;
import org.etspace.create.vo.Teacher;
import java.util.List;
	public interface ITeacherService {
		//增加指导老师
		public void save(Teacher teacher);
		//删除指导指导老师
		public void delete(String name);
		//修改指导老师
		public void update(Teacher teacher);
		//查询指导老师
		public Teacher find(String name);
		//分页查询指导老师
		public List findAll(int pageNow,int pageSize,Teacher teacher);
		//查询指导老师总数
		public int findAllSize(Teacher teacher);
		//获取所有指导老师
		public List getAll();
		//是否存在指导老师
		public boolean exist(String name);
	}
