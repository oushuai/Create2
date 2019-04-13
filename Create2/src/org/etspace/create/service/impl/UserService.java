package org.etspace.create.service.impl;
import org.etspace.create.dao.IUserDAO;
import org.etspace.create.vo.User;
import org.etspace.create.service.IUserService;
import java.util.List;
	public class UserService implements IUserService {
		private IUserDAO userDAO;
		public void setUserDAO(IUserDAO userDAO){
			this.userDAO=userDAO;
		}
		public void save(User user){
			userDAO.save(user);
		}
		public void delete(String username){			
			userDAO.delete(username);
		}
		public void update(User user){
			userDAO.update(user);
		}		
		public User find(String username){
			return userDAO.find(username);
		}		
		public List findAll(int pageNow,int pageSize,User user){
			return userDAO.findAll(pageNow,pageSize,user);
		}		
		public int findAllSize(User user){
			return userDAO.findAllSize(user);
		}
		public User check(String username,String password){
			return userDAO.check(username,password);
		}		
		public User check1(String username){
			return userDAO.check1(username);
		}		
		public boolean exist(String username){
			return userDAO.exist(username);
		}
		public boolean exist1(String stuid){
			return userDAO.exist1(stuid);
		}
	}
