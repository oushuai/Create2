package org.etspace.create.dao.impl;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.etspace.create.dao.IPingweiinformationDAO;
import org.etspace.create.vo.Pingweiinformation;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;
public class PingweiinformationDAO extends HibernateDaoSupport implements IPingweiinformationDAO {
	public void save(Pingweiinformation pingweiinformation) {
		getHibernateTemplate().save(pingweiinformation);
	}
	public void delete(String name){
		getHibernateTemplate().delete(find(name));
	}
	public void update(Pingweiinformation pingweiinformation){
		getHibernateTemplate().update(pingweiinformation);
	}
	public Pingweiinformation find(String name){
		List list=getHibernateTemplate().find("from Pingweiinformation where name=?",name);
		if(list.size()>0)
			return (Pingweiinformation)list.get(0);
		else
			return null;
	}
	public List findAll(int pageNow,int pageSize,Pingweiinformation pingweiinformation){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (pingweiinformation==null)
			hql="from Pingweiinformation order by name";
		else{
			hql="from Pingweiinformation where name like '%"+pingweiinformation.getName().trim()+"%' order by name";
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
	public int findAllSize(Pingweiinformation pingweiinformation){
		String hql="";
		if (pingweiinformation==null)
			hql="from Pingweiinformation";
		else
			hql="from Pingweiinformation where name like '%"+pingweiinformation.getName().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List getAll(){
		return getHibernateTemplate().find("from pingweiinformation order by name");
	}
	public boolean exist(String name) {
		List list=getHibernateTemplate().find("from Pingweiinformation where name=?",name);		
		if(list.size()>0)
			return true;
		else 
			return false;
	}
}