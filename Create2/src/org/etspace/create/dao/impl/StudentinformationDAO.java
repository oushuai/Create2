package org.etspace.create.dao.impl;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.etspace.create.dao.IStudentinformationDAO;
import org.etspace.create.vo.Studentinformation;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;
public class StudentinformationDAO extends HibernateDaoSupport implements IStudentinformationDAO {
	public void save(Studentinformation studentinformation) {
		getHibernateTemplate().save(studentinformation);
	}
	public void delete(String num){
		getHibernateTemplate().delete(find(num));
	}
	public void update(Studentinformation studentinformation){
		getHibernateTemplate().update(studentinformation);
	}
	public Studentinformation find(String num){
		List list=getHibernateTemplate().find("from Studentinformation where num=?",num);
		if(list.size()>0)
			return (Studentinformation)list.get(0);
		else
			return null;
	}
	public List findAll(int pageNow,int pageSize,Studentinformation studentinformation){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (studentinformation==null)
			hql="from Studentinformation order by num";
		else{
			hql="from Studentinformation where num like '%"+studentinformation.getNum().trim()+"%' order by num";
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
	public int findAllSize(Studentinformation studentinformation){
		String hql="";
		if (studentinformation==null)
			hql="from Studentinformation order by num";
		else
			hql="from Studentinformation where num like '%"+studentinformation.getNum().trim()+"%'";
		return getHibernateTemplate().find(hql).size();
	}
	public List getAll(){
	return getHibernateTemplate().find("from Studentinformation order by num");
	}
	public boolean exist(String num) {
		List list=getHibernateTemplate().find("from Studentinformation where num=?",num);
		if(list.size()>0)
			return true;
		else 
			return false;
	}
}