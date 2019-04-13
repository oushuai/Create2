package org.etspace.create.dao.impl;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.etspace.create.dao.ITongjiDAO;
import org.etspace.create.vo.Tongji;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;
public class TongjiDAO extends HibernateDaoSupport implements ITongjiDAO {
	public void save(Tongji tongji) {
		getHibernateTemplate().save(tongji);
	}
	public void delete(String pname){
		getHibernateTemplate().delete(find(pname));
	}
	public void update(Tongji tongji){
		getHibernateTemplate().update(tongji);
	}
	public Tongji find(String pname){
		List list=getHibernateTemplate().find("from Tongji where pname=?",pname);
		if(list.size()>0)
			return (Tongji)list.get(0);
		else
			return null;
	}
	public List findAll(int pageNow,int pageSize,Tongji tongji){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (tongji==null)
			hql="from Tongji order by pname";
		else{
			hql="from Tongji where pname like '%"+tongji.getPname().trim()+"%' order by pname";
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
	public int findAllSize(Tongji tongji){
		String hql="";
		if (tongji==null)
			hql="from Tongji";
		else
			hql="from Tongji where pname like '%"+tongji.getPname().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List findAll1(int pageNow,int pageSize,Tongji tongji){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (tongji==null)
			hql="from Tongji order by pname";
		else{
			hql="from Tongji where leaderteacher like '%"+tongji.getLeaderteacher().trim()+"%' order by pname";
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
	public int findAllSize1(Tongji tongji){
		String hql="";
		if (tongji==null)
			hql="from Tongji";
		else
			hql="from Tongji where leaderteacher like '%"+tongji.getLeaderteacher().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List getAll() {
	  return getHibernateTemplate().find("from Tongji order by pname");
		}
	public boolean exist(String pname) {
		List list=getHibernateTemplate().find("from Tongji where pname=?",pname);
		if(list.size()>0)
			return true;
		else 
			return false;
	}
}