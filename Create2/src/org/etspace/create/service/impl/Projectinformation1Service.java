package org.etspace.create.service.impl;
import org.etspace.create.dao.IProjectinformation1DAO;
import org.etspace.create.vo.Projectinformation1;
import org.etspace.create.service.IProjectinformation1Service;
import java.util.List;
public class Projectinformation1Service implements IProjectinformation1Service {
	private IProjectinformation1DAO projectinformation1DAO;
	public void setProjectinformation1DAO(IProjectinformation1DAO projectinformation1DAO) {
		this.projectinformation1DAO = projectinformation1DAO;
	}
	public void save(Projectinformation1 projectinformation1) {
		projectinformation1DAO.save(projectinformation1);
	}
	public void delete(String pname) {
		projectinformation1DAO.delete(pname);
	}
	public void update(Projectinformation1 projectinformation1) {
		projectinformation1DAO.update(projectinformation1);
	}
	public Projectinformation1 find(String pname) {
		return projectinformation1DAO.find(pname);
	}
	public List findAll(int pageNow, int pageSize, Projectinformation1 projectinformation1) {
		return projectinformation1DAO.findAll(pageNow, pageSize, projectinformation1);
	}
	public int findAllSize(Projectinformation1 projectinformation1) {
		return projectinformation1DAO.findAllSize(projectinformation1);
	}
	public List findAll1(int pageNow, int pageSize, Projectinformation1 projectinformation1) {
		return projectinformation1DAO.findAll1(pageNow, pageSize, projectinformation1);
	}
	public int findAllSize1(Projectinformation1 projectinformation1) {
		return projectinformation1DAO.findAllSize1(projectinformation1);
	}
	public List findAll2(int pageNow, int pageSize, Projectinformation1 projectinformation1) {
		return projectinformation1DAO.findAll2(pageNow, pageSize, projectinformation1);
	}
	public int findAllSize2(Projectinformation1 projectinformation1) {
		return projectinformation1DAO.findAllSize2(projectinformation1);
	}
	public List findAll3(int pageNow, int pageSize, Projectinformation1 projectinformation1) {
		return projectinformation1DAO.findAll3(pageNow, pageSize, projectinformation1);
	}
	public int findAllSize3(Projectinformation1 projectinformation1) {
		return projectinformation1DAO.findAllSize3(projectinformation1);
	}
	public List findAll4(int pageNow, int pageSize, Projectinformation1 projectinformation1) {
		return projectinformation1DAO.findAll4(pageNow, pageSize, projectinformation1);
	}
	public int findAllSize4(Projectinformation1 projectinformation1) {
		return projectinformation1DAO.findAllSize4(projectinformation1);
	}
	public List getAll(){
		return projectinformation1DAO.getAll();
	}
	public boolean exist(String pname) {
		return projectinformation1DAO.exist(pname);
	}
}