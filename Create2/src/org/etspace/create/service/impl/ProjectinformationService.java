package org.etspace.create.service.impl;
import org.etspace.create.dao.IProjectinformationDAO;
import org.etspace.create.vo.Projectinformation;
import org.etspace.create.service.IProjectinformationService;
import java.util.List;
public class ProjectinformationService implements IProjectinformationService {
	private IProjectinformationDAO projectinformationDAO;
	public void setProjectinformationDAO(IProjectinformationDAO projectinformationDAO) {
		this.projectinformationDAO = projectinformationDAO;
	}
	public void save(Projectinformation projectinformation) {
		projectinformationDAO.save(projectinformation);
	}
	public void delete(String pnum) {
		projectinformationDAO.delete(pnum);
	}
	public void update(Projectinformation projectinformation) {
		projectinformationDAO.update(projectinformation);
	}
	public Projectinformation find(String leadername,String pnum) {
		return projectinformationDAO.find(leadername);
	}
	public Projectinformation find(String pnum) {
		return projectinformationDAO.find(pnum);
	}
	public List findAll(int pageNow, int pageSize, Projectinformation projectinformation) {
		return projectinformationDAO.findAll(pageNow, pageSize, projectinformation);
	}
	public int findAllSize(Projectinformation projectinformation) {
		return projectinformationDAO.findAllSize(projectinformation);
	}
	public List findAll1(int pageNow, int pageSize, Projectinformation projectinformation) {
		return projectinformationDAO.findAll1(pageNow, pageSize, projectinformation);
	}
	public int findAllSize1(Projectinformation projectinformation) {
		return projectinformationDAO.findAllSize1(projectinformation);
	}
	public List getAll(){
		return projectinformationDAO.getAll();
	}
	public boolean exist(String pnum) {
		return projectinformationDAO.exist(pnum);
	}
}