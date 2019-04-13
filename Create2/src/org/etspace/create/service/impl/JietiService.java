package org.etspace.create.service.impl;
import org.etspace.create.dao.IJietiDAO;
import org.etspace.create.vo.Jieti;
import org.etspace.create.service.IJietiService;
import java.util.List;
public class JietiService implements IJietiService {
	private IJietiDAO jietiDAO;
	public void setJietiDAO(IJietiDAO jietiDAO) {
		this.jietiDAO =jietiDAO;
	}
	public void save(Jieti jieti) {
		jietiDAO.save(jieti);
	}
	public void delete(String pname) {
		jietiDAO.delete(pname);
	}
	public void update(Jieti jieti) {
		jietiDAO.update(jieti);
	}
	public Jieti find(String pname) {
		return jietiDAO.find(pname);
	}
	public List findAll(int pageNow, int pageSize, Jieti jieti) {
		return jietiDAO.findAll(pageNow, pageSize, jieti);
	}
	public int findAllSize(Jieti jieti) {
		return jietiDAO.findAllSize(jieti);
	}
	public List findAll1(int pageNow, int pageSize, Jieti jieti) {
		return jietiDAO.findAll1(pageNow, pageSize,jieti);
	}
	public int findAllSize1(Jieti jieti) {
		return jietiDAO.findAllSize1(jieti);
	}
	public List findAll2(int pageNow, int pageSize, Jieti jieti) {
		return jietiDAO.findAll2(pageNow, pageSize,jieti);
	}
	public int findAllSize2(Jieti jieti) {
		return jietiDAO.findAllSize2(jieti);
	}
	public List findAll3(int pageNow, int pageSize, Jieti jieti) {
		return jietiDAO.findAll3(pageNow, pageSize,jieti);
	}
	public int findAllSize3(Jieti jieti) {
		return jietiDAO.findAllSize3(jieti);
	}
	public List getAll(){
		return jietiDAO.getAll();
	}
	public boolean exist(String pname) {
		return jietiDAO.exist(pname);
	}
}