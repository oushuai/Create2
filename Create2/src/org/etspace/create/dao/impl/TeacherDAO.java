package org.etspace.create.dao.impl;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.etspace.create.dao.ITeacherDAO;
import org.etspace.create.vo.Teacher;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;
public class TeacherDAO extends HibernateDaoSupport implements ITeacherDAO {
	public void save(Teacher teacher) {
		getHibernateTemplate().save(teacher);
	}
	public void delete(String name){
		getHibernateTemplate().delete(find(name));
	}
	public void update(Teacher teacher){
		getHibernateTemplate().update(teacher);
	}
	public Teacher find(String name){
		List list=getHibernateTemplate().find("from Teacher where name=?",name);
		if(list.size()>0)
			return (Teacher)list.get(0);
		else
			return null;
	}
	public List findAll(int pageNow,int pageSize,Teacher teacher){
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		String hql="";
		if (teacher==null)
			hql="from Teacher order by name";
		else{
			hql="from Teacher where name like '%"+teacher.getName().trim()+"%' order by name";
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
	public int findAllSize(Teacher teacher){
		String hql="";
		if (teacher==null)
			hql="from Teacher";
		else
			hql="from Teacher where name like '%"+teacher.getName().trim()+"%' order by name";
		return getHibernateTemplate().find(hql).size();
	}
	public List getAll(){
	return getHibernateTemplate().find("from Teacher order by name");
	}
	public boolean exist(String name) {
		List list=getHibernateTemplate().find("from Teacher where name=?",name);
		if(list.size()>0)
			return true;
		else 
			return false;
	}
}