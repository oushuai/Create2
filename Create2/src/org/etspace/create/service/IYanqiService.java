package org.etspace.create.service;
import org.etspace.create.vo.Yanqi;
import java.util.List;
public interface IYanqiService {
	//增加项目
	public void save(Yanqi yanqi);
	//删除项目
	public void delete(String pname);
	//修改项目
	public void update(Yanqi yanqi);
	//查询项目
	public Yanqi find(String pname);
	//分页查询项目
	public List findAll(int pageNow,int pageSize,Yanqi yanqi);
	//查询项目总数
	public int findAllSize(Yanqi yanqi);
	//分页查询项目
			public List findAll1(int pageNow,int pageSize,Yanqi yanqi);
			//查询项目总数
			public int findAllSize1(Yanqi yanqi);
			
	//获取所有项目
	public List getAll();
	//是否存在项目
	public boolean exist(String pname);
}

