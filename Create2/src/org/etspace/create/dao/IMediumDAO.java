package org.etspace.create.dao;
import org.etspace.create.vo.Medium;
import java.util.List;
	public interface IMediumDAO {
		//增加项目
		public void save(Medium medium);
		//删除项目
		public void delete(String pname);
		//修改项目
		public void update(Medium medium);
		//查询项目
		public Medium find(String pname);
		//分页查询项目
		public List findAll(int pageNow,int pageSize,Medium medium);
		//查询项目编号
		public int findAllSize(Medium medium);
		//分页查询项目
				public List findAll1(int pageNow,int pageSize,Medium medium);
				//查询项目负责人学号
				public int findAllSize1(Medium medium);				
		//获取所有项目
		public List getAll();
		//是否存在项目
		public boolean exist(String pname);
	}
