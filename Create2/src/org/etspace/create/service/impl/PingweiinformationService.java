package org.etspace.create.service.impl;
import org.etspace.create.dao.IPingweiinformationDAO;
import org.etspace.create.vo.Pingweiinformation;
import org.etspace.create.service.IPingweiinformationService;
import java.util.List;
public class PingweiinformationService implements IPingweiinformationService {
	private IPingweiinformationDAO pingweiinformationDAO;
	public void setPingweiinformationDAO(IPingweiinformationDAO pingweiinformationDAO) {
		this.pingweiinformationDAO = pingweiinformationDAO;
	}
	public void save(Pingweiinformation pingweiinformation) {
		pingweiinformationDAO.save(pingweiinformation);
	}
	public void delete(String name) {
		pingweiinformationDAO.delete(name);
	}
	public void update(Pingweiinformation pingweiinformation) {
		pingweiinformationDAO.update(pingweiinformation);
	}
	public Pingweiinformation find(String name) {
		return pingweiinformationDAO.find(name);
	}
	public List findAll(int pageNow, int pageSize,Pingweiinformation  pingweiinformation) {
		return pingweiinformationDAO.findAll(pageNow, pageSize, pingweiinformation);
	}
	public int findAllSize(Pingweiinformation pingweiinformation) {
		return pingweiinformationDAO.findAllSize(pingweiinformation);
	}
	public List getAll(){
		return pingweiinformationDAO.getAll();
	}	
	public boolean exist(String name) {
		return pingweiinformationDAO.exist(name);
	}
}