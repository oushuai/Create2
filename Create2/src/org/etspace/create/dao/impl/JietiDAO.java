package org.etspace.create.dao.impl;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.etspace.create.dao.IJietiDAO;
import org.etspace.create.vo.Jieti;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;
public class JietiDAO extends HibernateDaoSupport implements IJietiDAO {
	public void save(Jieti jieti) {
		getHibernateTemplate().save(jieti);
	}
	public void delete(String pname){
		getHibernateTemplate().delete(find(pname));
	}
	public void update(Jieti jieti){
		getHibernateTemplate().update(jieti);
	}
	public Jieti find(String pname){
		List list=getHibernateTemplate().find("from Jieti where pname=?",pname);
		if(list.size()>0)
			return (Jieti)list.get(0);
		else
			return null;
	}
	public List findAll(int pageNow,int pageSize,Jieti jieti){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (jieti==null)
			hql="from Jieti order by pname";
		else{
			hql="from Jieti where pname like '%"+jieti.getPname().trim()+"%' order by pname";
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
	public int findAllSize(Jieti jieti){
		String hql="";
		if (jieti==null)
			hql="from Jieti";
		else
			hql="from Jieti where pname like '%"+jieti.getPname().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List findAll1(int pageNow,int pageSize,Jieti jieti){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (jieti==null)
			hql="from Jieti order by pname";
		else{
			hql="from Jieti where leadername like '%"+jieti.getLeadername().trim()+"%' order by pname";
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
	public int findAllSize1(Jieti jieti){
		String hql="";
		if (jieti==null)
			hql="from Jieti";
		else
			hql="from Jieti where leadername like '%"+jieti.getLeadername().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List findAll2(int pageNow,int pageSize,Jieti jieti){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (jieti==null)
			hql="from Jieti order by pname";
		else{
			hql="from Jieti where yuanhexi like '%"+jieti.getYuanhexi().trim()+"%' order by pname";
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
	public int findAllSize2(Jieti jieti){
		String hql="";
		if (jieti==null)
			hql="from Jieti";
		else
			hql="from Jieti where yuanhexi like '%"+jieti.getYuanhexi().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List findAll3(int pageNow,int pageSize,Jieti jieti){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (jieti==null)
			hql="from Jieti order by pname";
		else{
			hql="from Jieti where jindu like '%"+jieti.getJindu().trim()+"%' order by pname";
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
	public int findAllSize3(Jieti jieti){
		String hql="";
		if (jieti==null)
			hql="from Jieti";
		else
			hql="from Jieti where jindu like '%"+jieti.getJindu().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List getAll() {
	  return getHibernateTemplate().find("from Jieti order by pname");
		}
	public boolean exist(String pname) {
		List list=getHibernateTemplate().find("from Jieti where pname=?",pname);
		if(list.size()>0)
			return true;
		else 
			return false;
	}
}