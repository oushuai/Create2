package org.etspace.create.dao.impl;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.etspace.create.dao.IYanqiDAO;
import org.etspace.create.vo.Yanqi;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;
public class YanqiDAO extends HibernateDaoSupport implements IYanqiDAO {
	public void save(Yanqi yanqi) {
		getHibernateTemplate().save(yanqi);
	}
	public void delete(String pname){
		getHibernateTemplate().delete(find(pname));
	}
	public void update(Yanqi yanqi){
		getHibernateTemplate().update(yanqi);
	}
	public Yanqi find(String pname){
		List list=getHibernateTemplate().find("from Yanqi where pname=?",pname);
		if(list.size()>0)
			return (Yanqi)list.get(0);
		else
			return null;
	}
	public List findAll(int pageNow,int pageSize,Yanqi yanqi){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (yanqi==null)
			hql="from Yanqi order by pname";
		else{
			hql="from Yanqi where pname like '%"+yanqi.getPname().trim()+"%' order by pname";
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
	public int findAllSize(Yanqi yanqi){
		String hql="";
		if (yanqi==null)
			hql="from Yanqi";
		else
			hql="from Yanqi where pname like '%"+yanqi.getPname().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List findAll1(int pageNow,int pageSize,Yanqi yanqi){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (yanqi==null)
			hql="from Yanqi order by pname";
		else{
			hql="from Yanqi where leadername like '%"+yanqi.getLeadername().trim()+"%' order by pname";
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
	public int findAllSize1(Yanqi yanqi){
		String hql="";
		if (yanqi==null)
			hql="from Yanqi";
		else
			hql="from Yanqi where leadername like '%"+yanqi.getLeadername().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List getAll() {
	  return getHibernateTemplate().find("from Yanqi order by pname");
		}
	public boolean exist(String pname) {
		List list=getHibernateTemplate().find("from Yanqi where pname=?",pname);
		if(list.size()>0)
			return true;
		else 
			return false;
	}
}