package org.etspace.create.dao.impl;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.etspace.create.dao.IMediumDAO;
import org.etspace.create.vo.Medium;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;
public class MediumDAO extends HibernateDaoSupport implements IMediumDAO {
	public void save(Medium medium) {
		getHibernateTemplate().save(medium);
	}
	public void delete(String pname){
		getHibernateTemplate().delete(find(pname));
	}
	public void update(Medium medium){
		getHibernateTemplate().update(medium);
	}
	public Medium find(String pname){
		List list=getHibernateTemplate().find("from Medium where pname=?",pname);
		if(list.size()>0)
			return (Medium)list.get(0);
		else
			return null;
	}
	public List findAll(int pageNow,int pageSize,Medium medium){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (medium==null)
			hql="from Medium order by pname";
		else{
			hql="from Medium where pname like '%"+medium.getPname().trim()+"%' order by pname";
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
	public int findAllSize(Medium medium){
		String hql="";
		if (medium==null)
			hql="from Medium";
		else
			hql="from Medium where pname like '%"+medium.getPname().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List findAll1(int pageNow,int pageSize,Medium medium){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (medium==null)
			hql="from Medium order by pname";
		else{
			hql="from Medium where leadername like '%"+medium.getLeadername().trim()+"%' order by pname";
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
	public int findAllSize1(Medium medium){
		String hql="";
		if (medium==null)
			hql="from Medium";
		else
			hql="from Medium where leadername like '%"+medium.getLeadername().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List getAll() {
	  return getHibernateTemplate().find("from Medium order by pname");
		}
	public boolean exist(String pname) {
		List list=getHibernateTemplate().find("from Medium where pname=?",pname);
		if(list.size()>0)
			return true;
		else 
			return false;
	}
}