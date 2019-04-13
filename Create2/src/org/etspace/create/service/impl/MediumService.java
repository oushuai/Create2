package org.etspace.create.service.impl;
import org.etspace.create.dao.IMediumDAO;
import org.etspace.create.vo.Medium;
import org.etspace.create.service.IMediumService;
import java.util.List;
public class MediumService implements IMediumService {
	private IMediumDAO mediumDAO;
	public void setMediumDAO(IMediumDAO mediumDAO) {
		this.mediumDAO =mediumDAO;
	}
	public void save(Medium medium) {
		mediumDAO.save(medium);
	}
	public void delete(String pname) {
		mediumDAO.delete(pname);
	}
	public void update(Medium medium) {
		mediumDAO.update(medium);
	}
	public Medium find(String pname) {
		return mediumDAO.find(pname);
	}
	public List findAll(int pageNow, int pageSize, Medium medium) {
		return mediumDAO.findAll(pageNow, pageSize, medium);
	}
	public int findAllSize(Medium medium) {
		return mediumDAO.findAllSize(medium);
	}
	public List findAll1(int pageNow, int pageSize, Medium medium) {
		return mediumDAO.findAll1(pageNow, pageSize,medium);
	}
	public int findAllSize1(Medium medium) {
		return mediumDAO.findAllSize1(medium);
	}
	
	public List getAll(){
		return mediumDAO.getAll();
	}
	public boolean exist(String pname) {
		return mediumDAO.exist(pname);
	}
}