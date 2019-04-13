package org.etspace.create.service.impl;
import org.etspace.create.dao.ITongjiDAO;
import org.etspace.create.vo.Tongji;
import org.etspace.create.service.ITongjiService;
import java.util.List;
public class TongjiService implements ITongjiService {
	private ITongjiDAO tongjiDAO;
	public void setTongjiDAO(ITongjiDAO tongjiDAO) {
		this.tongjiDAO =tongjiDAO;
	}
	public void save(Tongji tongji) {
		tongjiDAO.save(tongji);
	}
	public void delete(String pname) {
		tongjiDAO.delete(pname);
	}
	public void update(Tongji tongji) {
		tongjiDAO.update(tongji);
	}
	public Tongji find(String pname) {
		return tongjiDAO.find(pname);
	}
	public List findAll(int pageNow, int pageSize, Tongji tongji) {
		return tongjiDAO.findAll(pageNow, pageSize, tongji);
	}
	public int findAllSize(Tongji tongji) {
		return tongjiDAO.findAllSize(tongji);
	}
	public List findAll1(int pageNow, int pageSize, Tongji tongji) {
		return tongjiDAO.findAll1(pageNow, pageSize,tongji);
	}
	public int findAllSize1(Tongji tongji) {
		return tongjiDAO.findAllSize1(tongji);
	}
	
	public List getAll(){
		return tongjiDAO.getAll();
	}
	public boolean exist(String pname) {
		return tongjiDAO.exist(pname);
	}
}