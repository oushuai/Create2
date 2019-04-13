package org.etspace.create.dao.impl;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.etspace.create.dao.IUserDAO;
import org.etspace.create.vo.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;

public class UserDAO extends HibernateDaoSupport implements IUserDAO {
	public void save(User user) {
		getHibernateTemplate().save(user);
	}
	public void delete(String username){		
		getHibernateTemplate().delete(find(username));
	}
	public void update(User user){
		getHibernateTemplate().update(user);
	}
	public User find(String username){
		List list=getHibernateTemplate().find("from User where username=?",username);
		if(list.size()>0)
			return (User)list.get(0);
		else
			return null;
	}
	public List findAll(int pageNow,int pageSize,User user){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
				Transaction ts=session.beginTransaction();
		String hql="";
		if (user==null)
			hql="from User order by type asc,username asc";
		else{
			hql="from User where username like '%"+user.getUsername().trim()+"%' order by type asc,username asc";
		}
		Query query=session.createQuery(hql);
		int firstResult=(pageNow-1)*pageSize;
		query.setFirstResult(firstResult);
		query.setMaxResults(pageSize);
		List list=query.list();
		ts.commit();
		session.close();
		session=null;
		return list;
	}
	public int findAllSize(User user){
		String hql="";
		if (user==null)
			hql="from User";
		else
			hql="from User where username like '%"+user.getUsername().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public User check(String username, String password) {
	    List list=getHibernateTemplate().find("from User where username=? and password=?",username,password);
		if(list.size()>0)
			return (User)list.get(0);
		else
			return null;
	}
	public User check1(String username) {
	    List list=getHibernateTemplate().find("from User where username=?",username);
		if(list.size()>0)
			return (User)list.get(0);
		else
			return null;
	}
	public boolean exist(String username) {
		List list=getHibernateTemplate().find("from User where username=?",username);
		if(list.size()>0)
			return true;
		else 
			return false;
	}
	public boolean exist1(String stuid) {
		List list=getHibernateTemplate().find("from User where stuid=?",stuid);
		if(list.size()>0)
			return true;
		else 
			return false;
	}
}