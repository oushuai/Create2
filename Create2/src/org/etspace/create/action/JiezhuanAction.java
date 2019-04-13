package org.etspace.create.action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import org.etspace.create.vo.Jiezhuan;
import org.etspace.create.service.IJiezhuanService;
import org.etspace.create.tool.Pager;
import java.util.List;
import java.util.Map;
public class JiezhuanAction extends ActionSupport{
	private Jiezhuan jiezhuan;
	private IJiezhuanService jiezhuanService;
	private int pageNow=1;
	private int pageSize=10;  
	public Jiezhuan getJiezhuan() {
		return jiezhuan;
	}
	public void setJiezhuan(Jiezhuan jiezhuan) {
		this.jiezhuan = jiezhuan;
	}
	public IJiezhuanService getJiezhuanService() {
		return jiezhuanService;
	}
	public void setJiezhuanService(IJiezhuanService jiezhuanService) {
		this.jiezhuanService = jiezhuanService;
	}
	public int getPageNow() {
		return pageNow;
	}
	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public String execute()throws Exception{
		return SUCCESS;
	}
	public String jiezhuanList()throws Exception{
		List list=jiezhuanService.findAll(pageNow, pageSize, jiezhuan);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,jiezhuanService.findAllSize(jiezhuan));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String shenhe8()throws Exception{
		List list=jiezhuanService.findAll(pageNow, pageSize, jiezhuan);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,jiezhuanService.findAllSize(jiezhuan));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String view8()throws Exception{
		this.jiezhuan=jiezhuanService.find(jiezhuan.getPname());
		return SUCCESS;
	}
	public String view88()throws Exception{	
			jiezhuanService.update(jiezhuan);
			return SUCCESS;		
	}
	public String jiezhuanList1()throws Exception{
		List list=jiezhuanService.findAll1(pageNow, pageSize, jiezhuan);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,jiezhuanService.findAllSize1(jiezhuan));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String jiezhuanAddView()throws Exception{
		return SUCCESS;
	}
	public String jiezhuanAdd()throws Exception{
		if (jiezhuan.getPname().length()!=0 && jiezhuanService.find(jiezhuan.getPname())==null){
			jiezhuanService.save(jiezhuan);
			return SUCCESS;
		}else{
			return ERROR;
		}
 }
	public String jiezhuanDelete()throws Exception{	
			jiezhuanService.delete(jiezhuan.getPname());
			return SUCCESS;	
	}
	public String jiezhuanUpdateView()throws Exception{
		this.jiezhuan=jiezhuanService.find(jiezhuan.getPname());
		return SUCCESS;
	}
	public String jiezhuanUpdate()throws Exception{	
			jiezhuanService.update(jiezhuan);
			return SUCCESS;		
	}
}
