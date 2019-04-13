package org.etspace.create.service.impl;
import org.etspace.create.dao.IYanqiDAO;
import org.etspace.create.vo.Yanqi;
import org.etspace.create.service.IYanqiService;
import java.util.List;
public class YanqiService implements IYanqiService {
	private IYanqiDAO yanqiDAO;
	public void setYanqiDAO(IYanqiDAO yanqiDAO) {
		this.yanqiDAO =yanqiDAO;
	}
	public void save(Yanqi yanqi) {
		yanqiDAO.save(yanqi);
	}
	public void delete(String pname) {
		yanqiDAO.delete(pname);
	}
	public void update(Yanqi yanqi) {
		yanqiDAO.update(yanqi);
	}
	public Yanqi find(String pname) {
		return yanqiDAO.find(pname);
	}
	public List findAll(int pageNow, int pageSize, Yanqi yanqi) {
		return yanqiDAO.findAll(pageNow, pageSize, yanqi);
	}
	public int findAllSize(Yanqi yanqi) {
		return yanqiDAO.findAllSize(yanqi);
	}
	public List findAll1(int pageNow, int pageSize, Yanqi yanqi) {
		return yanqiDAO.findAll1(pageNow, pageSize,yanqi);
	}
	public int findAllSize1(Yanqi yanqi) {
		return yanqiDAO.findAllSize1(yanqi);
	}
	
	public List getAll(){
		return yanqiDAO.getAll();
	}
	public boolean exist(String pname) {
		return yanqiDAO.exist(pname);
	}
}