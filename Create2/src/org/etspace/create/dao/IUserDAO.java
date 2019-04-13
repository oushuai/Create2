package org.etspace.create.dao;
import org.etspace.create.vo.User;
import java.util.List;
	public interface IUserDAO {
		//增加用户
		public void save(User user);
		//删除用户
		public void delete(String username);
		//修改用户
		public void update(User user);
		//查询用户
		public User find(String username);
		//分页查询用户
		public List findAll(int pageNow,int pageSize,User user);
		//查询用户总数
		public int findAllSize(User user);
		//检查用户
		public User check(String username,String password);
		public User check1(String username);
		//是否存在用户
		public boolean exist(String username);
		public boolean exist1(String stuid);
	}
