package org.etspace.create.dao;
import org.etspace.create.vo.Pingweiinformation;
import java.util.List;
	public interface IPingweiinformationDAO {
		//增加评委
		public void save(Pingweiinformation pingweiinformation);
		//删除评委
		public void delete(String name);
		//修改评委
		public void update(Pingweiinformation pingweiinformation);
		//查询评委
		public Pingweiinformation find(String name);
		//分页查询评委
		public List findAll(int pageNow,int pageSize,Pingweiinformation pingweiinformation);
		//查询评委总数
		public int findAllSize(Pingweiinformation pingweiinformation);
		//获取所有评委
		public List getAll();		
		//是否存在评委	
		public boolean exist(String name);
	}
