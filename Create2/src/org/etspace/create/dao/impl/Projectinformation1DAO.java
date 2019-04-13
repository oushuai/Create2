package org.etspace.create.dao.impl;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.etspace.create.dao.IProjectinformation1DAO;
import org.etspace.create.vo.Projectinformation1;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;
public class Projectinformation1DAO extends HibernateDaoSupport implements IProjectinformation1DAO {
	public void save(Projectinformation1 projectinformation1) {
		getHibernateTemplate().save(projectinformation1);
	}
	public void delete(String pname){
		getHibernateTemplate().delete(find(pname));
	}
	public void update(Projectinformation1 projectinformation1){
		getHibernateTemplate().update(projectinformation1);
	}
	public Projectinformation1 find(String pname){
		List list=getHibernateTemplate().find("from Projectinformation1 where pname=?",pname);
		if(list.size()>0)
			return (Projectinformation1)list.get(0);
		else
			return null;
	}
	public List findAll(int pageNow,int pageSize,Projectinformation1 projectinformation1){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (projectinformation1==null)
			hql="from Projectinformation1 order by pname";
		else{
			hql="from Projectinformation1 where pname like '%"+projectinformation1.getPname().trim()+"%' order by pname";
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
	public int findAllSize(Projectinformation1 projectinformation1){
		String hql="";
		if (projectinformation1==null)
			hql="from Projectinformation1";
		else
			hql="from Projectinformation1 where pname like '%"+projectinformation1.getPname().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List findAll1(int pageNow,int pageSize,Projectinformation1 projectinformation1){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (projectinformation1==null)
			hql="from Projectinformation1 order by pname";
		else{
			hql="from Projectinformation1 where leadernum like '%"+projectinformation1.getLeadernum().trim()+"%' order by pname";
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
	public int findAllSize1(Projectinformation1 projectinformation1){
		String hql="";
		if (projectinformation1==null)
			hql="from Projectinformation1";
		else
			hql="from Projectinformation1 where leadernum like '%"+projectinformation1.getLeadernum().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List findAll2(int pageNow,int pageSize,Projectinformation1 projectinformation1){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (projectinformation1==null)
			hql="from Projectinformation1 order by pname";
		else{
			hql="from Projectinformation1 where yuanxi like '%"+projectinformation1.getYuanxi().trim()+"%' order by pname";
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
	public int findAllSize2(Projectinformation1 projectinformation1){
		String hql="";
		if (projectinformation1==null)
			hql="from Projectinformation1";
		else
			hql="from Projectinformation1 where yuanxi like '%"+projectinformation1.getYuanxi().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List findAll3(int pageNow,int pageSize,Projectinformation1 projectinformation1){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (projectinformation1==null)
			hql="from Projectinformation1 order by pname";
		else{
			hql="from Projectinformation1 where jindu like '%"+projectinformation1.getJindu().trim()+"%' order by pname";
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
	public int findAllSize3(Projectinformation1 projectinformation1){
		String hql="";
		if (projectinformation1==null)
			hql="from Projectinformation1";
		else
			hql="from Projectinformation1 where jindu like '%"+projectinformation1.getJindu().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List findAll4(int pageNow,int pageSize,Projectinformation1 projectinformation1){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (projectinformation1==null)
			hql="from Projectinformation1 order by pname";
		else{
			hql="from Projectinformation1 where jindu1 like '%"+projectinformation1.getJindu1().trim()+"%' order by pname";
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
	public int findAllSize4(Projectinformation1 projectinformation1){
		String hql="";
		if (projectinformation1==null)
			hql="from Projectinformation1";
		else
			hql="from Projectinformation1 where jindu1 like '%"+projectinformation1.getJindu1().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List getAll() {
	  return getHibernateTemplate().find("from Projectinformation1 order by pname");
		}
	public boolean exist(String pname) {
		List list=getHibernateTemplate().find("from Projectinformation1 where pname=?",pname);
		if(list.size()>0)
			return true;
		else 
			return false;
	}
}