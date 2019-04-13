package org.etspace.create.service;
import org.etspace.create.vo.Projectinformation1;
import java.util.List;
public interface IProjectinformation1Service {
	//增加项目
	public void save(Projectinformation1 projectinformation1);
	//删除项目
	public void delete(String pname);
	//修改项目
	public void update(Projectinformation1 projectinformation1);
	//查询项目
	public Projectinformation1 find(String pname);
	//分页查询项目
	public List findAll(int pageNow,int pageSize,Projectinformation1 projectinformation1);
	//查询项目总数
	public int findAllSize(Projectinformation1 projectinformation1);
	//分页查询项目
			public List findAll1(int pageNow,int pageSize,Projectinformation1 projectinformation1);
			//查询项目总数
			public int findAllSize1(Projectinformation1 projectinformation1);
			public List findAll2(int pageNow,int pageSize,Projectinformation1 projectinformation1);
			//查询项目总数
			public int findAllSize2(Projectinformation1 projectinformation1);
			public List findAll3(int pageNow,int pageSize,Projectinformation1 projectinformation1);
			//查询项目总数
			public int findAllSize3(Projectinformation1 projectinformation1);
			public List findAll4(int pageNow,int pageSize,Projectinformation1 projectinformation1);
			//查询项目总数
			public int findAllSize4(Projectinformation1 projectinformation1);
	//获取所有项目
	public List getAll();
	//是否存在项目
	public boolean exist(String pname);
}

