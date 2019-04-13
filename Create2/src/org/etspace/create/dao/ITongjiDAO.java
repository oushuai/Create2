package org.etspace.create.dao;
import org.etspace.create.vo.Tongji;
import java.util.List;
	public interface ITongjiDAO {
		//增加项目
		public void save(Tongji tongji);
		//删除项目
		public void delete(String pname);
		//修改项目
		public void update(Tongji tongji);
		//查询项目
		public Tongji find(String pname);
		//分页查询项目
		public List findAll(int pageNow,int pageSize,Tongji tongji);
		//查询项目编号
		public int findAllSize(Tongji tongji);
		//分页查询项目
				public List findAll1(int pageNow,int pageSize,Tongji tongji);
				//查询项目负责人学号
				public int findAllSize1(Tongji tongji);				
		//获取所有项目
		public List getAll();
		//是否存在项目
		public boolean exist(String pname);
	}
