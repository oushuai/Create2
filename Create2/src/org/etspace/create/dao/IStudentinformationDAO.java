package org.etspace.create.dao;
import org.etspace.create.vo.Studentinformation;
import java.util.List;
	public interface IStudentinformationDAO {
		//增加学生（项目负责人）
		public void save(Studentinformation studentinformation);
		//删除学生
		public void delete(String num);
		//修改学生
		public void update(Studentinformation studentinformation);
		//查询学生
		public Studentinformation find(String num);
		//分页查询学生
		public List findAll(int pageNow,int pageSize,Studentinformation studentinformation);
		//查询学生总数
		public int findAllSize(Studentinformation studentinformation);
				//获取所有学生
		public List getAll();
		//是否存在用户
		public boolean exist(String num);
	}
