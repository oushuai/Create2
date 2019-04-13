package org.etspace.create.service;
import org.etspace.create.vo.Jieti;
import java.util.List;
public interface IJietiService {
	//增加项目
	public void save(Jieti jieti);
	//删除项目
	public void delete(String pname);
	//修改项目
	public void update(Jieti jieti);
	//查询项目
	public Jieti find(String pname);
	//分页查询项目
	public List findAll(int pageNow,int pageSize,Jieti jieti);
	//查询项目总数
	public int findAllSize(Jieti jieti);
	//分页查询项目
			public List findAll1(int pageNow,int pageSize,Jieti jieti);
			//查询项目总数
			public int findAllSize1(Jieti jieti);
			public List findAll2(int pageNow,int pageSize,Jieti jieti);
			//查询项目总数
			public int findAllSize2(Jieti jieti);	
			public List findAll3(int pageNow,int pageSize,Jieti jieti);
			//查询项目总数
			public int findAllSize3(Jieti jieti);
	//获取所有项目
	public List getAll();
	//是否存在项目
	public boolean exist(String pname);
}

