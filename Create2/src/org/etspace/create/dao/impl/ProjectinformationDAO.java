package org.etspace.create.dao.impl;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.etspace.create.dao.IProjectinformationDAO;
import org.etspace.create.vo.Projectinformation;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;
public class ProjectinformationDAO extends HibernateDaoSupport implements IProjectinformationDAO {
	public void save(Projectinformation projectinformation) {
		getHibernateTemplate().save(projectinformation);
	}
	public void delete(String pnum){
		getHibernateTemplate().delete(find(pnum));
	}
	public void update(Projectinformation projectinformation){
		getHibernateTemplate().update(projectinformation);
	}
	public Projectinformation find(String leadername,String pnum){
		
		List list=getHibernateTemplate().find("from Projectinformation where leadername=?",leadername);
		if(list.size()>0)
			return (Projectinformation)list.get(0);
		else
			return null;
	}
public Projectinformation find(String pnum){
		
		List list=getHibernateTemplate().find("from Projectinformation where pnum=?",pnum);
		if(list.size()>0)
			return (Projectinformation)list.get(0);
		else
			return null;
	}
	public List findAll(int pageNow,int pageSize,Projectinformation projectinformation){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (projectinformation==null)
			hql="from Projectinformation order by pnum";
		else{
			hql="from Projectinformation where pnum like '%"+projectinformation.getPnum().trim()+"%' order by pnum";
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
	public int findAllSize(Projectinformation projectinformation){
		String hql="";
		if (projectinformation==null)
			hql="from Projectinformation";
		else
			hql="from Projectinformation where pnum like '%"+projectinformation.getPnum().trim()+"%' order by pnum";
		return getHibernateTemplate().find(hql).size();
	}
	public List findAll1(int pageNow,int pageSize,Projectinformation projectinformation){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (projectinformation==null)
			hql="from Projectinformation order by pnum";
		else{
			hql="from Projectinformation where leadernum like '%"+projectinformation.getLeadernum().trim()+"%' order by pnum";
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
	public int findAllSize1(Projectinformation projectinformation){
		String hql="";
		if (projectinformation==null)
			hql="from Projectinformation";
		else
			hql="from Projectinformation where leadernum like '%"+projectinformation.getLeadernum().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List getAll() {
	  return getHibernateTemplate().find("from Projectinformation order by pnum");
		}
	public boolean exist(String pnum) {
		List list=getHibernateTemplate().find("from Projectinformation where pnum=?",pnum);
		if(list.size()>0)
			return true;
		else 
			return false;
	}
}