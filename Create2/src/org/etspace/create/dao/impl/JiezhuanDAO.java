package org.etspace.create.dao.impl;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.etspace.create.dao.IJiezhuanDAO;
import org.etspace.create.vo.Jiezhuan;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;
public class JiezhuanDAO extends HibernateDaoSupport implements IJiezhuanDAO {
	public void save(Jiezhuan jiezhuan) {
		getHibernateTemplate().save(jiezhuan);
	}
	public void delete(String pname){
		getHibernateTemplate().delete(find(pname));
	}
	public void update(Jiezhuan jiezhuan){
		getHibernateTemplate().update(jiezhuan);
	}
	public Jiezhuan find(String pname){
		List list=getHibernateTemplate().find("from Jiezhuan where pname=?",pname);
		if(list.size()>0)
			return (Jiezhuan)list.get(0);
		else
			return null;
	}
	public List findAll(int pageNow,int pageSize,Jiezhuan jiezhuan){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (jiezhuan==null)
			hql="from Jiezhuan order by pname";
		else{
			hql="from Jiezhuan where pname like '%"+jiezhuan.getPname().trim()+"%' order by pname";
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
	public int findAllSize(Jiezhuan jiezhuan){
		String hql="";
		if (jiezhuan==null)
			hql="from Jiezhuan";
		else
			hql="from Jiezhuan where pname like '%"+jiezhuan.getPname().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List findAll1(int pageNow,int pageSize,Jiezhuan jiezhuan){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (jiezhuan==null)
			hql="from Jiezhuan order by pname";
		else{
			hql="from Jiezhuan where leadername like '%"+jiezhuan.getLeadername().trim()+"%' order by pname";
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
	public int findAllSize1(Jiezhuan jiezhuan){
		String hql="";
		if (jiezhuan==null)
			hql="from Jiezhuan";
		else
			hql="from Jiezhuan where leadername like '%"+jiezhuan.getLeadername().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List getAll() {
	  return getHibernateTemplate().find("from Jiezhuan order by pname");
		}
	public boolean exist(String pname) {
		List list=getHibernateTemplate().find("from Jiezhuan where pname=?",pname);
		if(list.size()>0)
			return true;
		else 
			return false;
	}
}