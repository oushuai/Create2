package org.etspace.create.dao;
import org.etspace.create.vo.Projectinformation;
import java.util.List;
	public interface IProjectinformationDAO {
		//增加项目
		public void save(Projectinformation projectinformation);
		//删除项目
		public void delete(String pnum);
		//修改项目
		public void update(Projectinformation projectinformation);
		//查询项目
		public Projectinformation find(String pnum);
		public Projectinformation find(String leadernum,String pnum);		
		//分页查询项目
		public List findAll(int pageNow,int pageSize,Projectinformation projectinformation);
		
		//分页查询项目
		public List findAll1(int pageNow,int pageSize,Projectinformation projectinformation);
		//查询项目总数
		public int findAllSize(Projectinformation projectinformation);
		public int findAllSize1(Projectinformation projectinformation);
		//获取所有项目
		public List getAll();
		//是否存在项目
		public boolean exist(String pnum);
	}
