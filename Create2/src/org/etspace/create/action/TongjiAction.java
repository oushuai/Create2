package org.etspace.create.action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import org.etspace.create.vo.Tongji;
import org.etspace.create.service.ITongjiService;
import org.etspace.create.tool.Pager;
import java.util.List;
import java.util.Map;
public class TongjiAction extends ActionSupport{
	private Tongji tongji;
	private ITongjiService tongjiService;
	private int pageNow=1;
	private int pageSize=10;  
	public Tongji getTongji() {
		return tongji;
	}
	public void setTongji(Tongji tongji) {
		this.tongji = tongji;
	}
	public ITongjiService getTongjiService() {
		return tongjiService;
	}
	public void setTongjiService(ITongjiService tongjiService) {
		this.tongjiService = tongjiService;
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
	public String tongjiList()throws Exception{
		List list=tongjiService.findAll(pageNow, pageSize, tongji);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,tongjiService.findAllSize(tongji));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String shenhe9()throws Exception{
		List list=tongjiService.findAll(pageNow, pageSize, tongji);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,tongjiService.findAllSize(tongji));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String view9()throws Exception{
		this.tongji=tongjiService.find(tongji.getPname());
		return SUCCESS;
	}
	public String view99()throws Exception{	
			tongjiService.update(tongji);
			return SUCCESS;		
	}
	public String tongjiList1()throws Exception{
		List list=tongjiService.findAll1(pageNow, pageSize, tongji);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,tongjiService.findAllSize1(tongji));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String tongjiAddView()throws Exception{
		return SUCCESS;
	}
	public String tongjiAdd()throws Exception{
		if (tongji.getPname().length()!=0 && tongjiService.find(tongji.getPname())==null){
			tongjiService.save(tongji);
			return SUCCESS;
		}else{
			return ERROR;
		}
 }
	public String tongjiDelete()throws Exception{	
			tongjiService.delete(tongji.getPname());
			return SUCCESS;	
	}
	public String tongjiUpdateView()throws Exception{
		this.tongji=tongjiService.find(tongji.getPname());
		return SUCCESS;
	}
	public String tongjiUpdate()throws Exception{	
			tongjiService.update(tongji);
			return SUCCESS;		
	}
}
