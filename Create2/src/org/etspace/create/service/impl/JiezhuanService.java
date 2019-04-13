package org.etspace.create.service.impl;
import org.etspace.create.dao.IJiezhuanDAO;
import org.etspace.create.vo.Jiezhuan;
import org.etspace.create.service.IJiezhuanService;
import java.util.List;
public class JiezhuanService implements IJiezhuanService {
	private IJiezhuanDAO jiezhuanDAO;
	public void setJiezhuanDAO(IJiezhuanDAO jiezhuanDAO) {
		this.jiezhuanDAO =jiezhuanDAO;
	}
	public void save(Jiezhuan jiezhuan) {
		jiezhuanDAO.save(jiezhuan);
	}
	public void delete(String pname) {
		jiezhuanDAO.delete(pname);
	}
	public void update(Jiezhuan jiezhuan) {
		jiezhuanDAO.update(jiezhuan);
	}
	public Jiezhuan find(String pname) {
		return jiezhuanDAO.find(pname);
	}
	public List findAll(int pageNow, int pageSize, Jiezhuan jiezhuan) {
		return jiezhuanDAO.findAll(pageNow, pageSize, jiezhuan);
	}
	public int findAllSize(Jiezhuan jiezhuan) {
		return jiezhuanDAO.findAllSize(jiezhuan);
	}
	public List findAll1(int pageNow, int pageSize, Jiezhuan jiezhuan) {
		return jiezhuanDAO.findAll1(pageNow, pageSize,jiezhuan);
	}
	public int findAllSize1(Jiezhuan jiezhuan) {
		return jiezhuanDAO.findAllSize1(jiezhuan);
	}
	
	public List getAll(){
		return jiezhuanDAO.getAll();
	}
	public boolean exist(String pname) {
		return jiezhuanDAO.exist(pname);
	}
}