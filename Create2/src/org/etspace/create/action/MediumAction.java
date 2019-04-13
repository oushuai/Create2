package org.etspace.create.action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import org.etspace.create.vo.Medium;
import org.etspace.create.service.IMediumService;
import org.etspace.create.tool.Pager;
import java.util.List;
import java.util.Map;
public class MediumAction extends ActionSupport{
	private Medium medium;
	private IMediumService mediumService;
	private int pageNow=1;
	private int pageSize=10;  
	public Medium getMedium() {
		return medium;
	}
	public void setMedium(Medium medium) {
		this.medium = medium;
	}
	public IMediumService getMediumService() {
		return mediumService;
	}
	public void setMediumService(IMediumService mediumService) {
		this.mediumService = mediumService;
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
	public String mediumList()throws Exception{
		List list=mediumService.findAll(pageNow, pageSize, medium);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,mediumService.findAllSize(medium));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String shenhe4()throws Exception{
		List list=mediumService.findAll(pageNow, pageSize, medium);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,mediumService.findAllSize(medium));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String view4()throws Exception{
		this.medium=mediumService.find(medium.getPname());
		return SUCCESS;
	}
	public String view44()throws Exception{	
			mediumService.update(medium);
			return SUCCESS;		
	}
	public String mediumList1()throws Exception{
		List list=mediumService.findAll1(pageNow, pageSize, medium);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,mediumService.findAllSize1(medium));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String mediumAddView()throws Exception{
		return SUCCESS;
	}
	public String mediumAdd()throws Exception{
		if (medium.getPname().length()!=0 && mediumService.find(medium.getPname())==null){
			mediumService.save(medium);
			return SUCCESS;
		}else{
			return ERROR;
		}
 }
	public String mediumDelete()throws Exception{	
			mediumService.delete(medium.getPname());
			return SUCCESS;	
	}
	public String mediumUpdateView()throws Exception{
		this.medium=mediumService.find(medium.getPname());
		return SUCCESS;
	}
	public String mediumUpdate()throws Exception{	
			mediumService.update(medium);
			return SUCCESS;		
	}
}
