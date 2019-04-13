package org.etspace.create.dao;
import org.etspace.create.vo.Jiezhuan;
import java.util.List;
	public interface IJiezhuanDAO {
		//增加项目
		public void save(Jiezhuan jiezhuan);
		//删除项目
		public void delete(String pname);
		//修改项目
		public void update(Jiezhuan jiezhuan);
		//查询项目
		public Jiezhuan find(String pname);
		//分页查询项目
		public List findAll(int pageNow,int pageSize,Jiezhuan jiezhuan);
		//查询项目编号
		public int findAllSize(Jiezhuan jiezhuan);
		//分页查询项目
				public List findAll1(int pageNow,int pageSize,Jiezhuan jiezhuan);
				//查询项目负责人学号
				public int findAllSize1(Jiezhuan jiezhuan);				
		//获取所有项目
		public List getAll();
		//是否存在项目
		public boolean exist(String pname);
	}
