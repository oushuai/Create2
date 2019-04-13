package org.etspace.create.action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import org.etspace.create.vo.Projectinformation1;
import org.etspace.create.service.IProjectinformation1Service;
import org.etspace.create.tool.Pager;
import java.util.List;
import java.util.Map;
public class Projectinformation1Action extends ActionSupport{
	private Projectinformation1 projectinformation1;
	private IProjectinformation1Service projectinformation1Service;
	private int pageNow=1;
	private int pageSize=10;  
	public Projectinformation1 getProjectinformation1() {
		return projectinformation1;
	}
	public void setProjectinformation1(Projectinformation1 projectinformation1) {
		this.projectinformation1 = projectinformation1;
	}
	public IProjectinformation1Service getProjectinformation1Service() {
		return projectinformation1Service;
	}
	public void setProjectinformation1Service(IProjectinformation1Service projectinformation1Service) {
		this.projectinformation1Service = projectinformation1Service;
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
	public String projectinformation1List()throws Exception{
		List list=projectinformation1Service.findAll(pageNow, pageSize, projectinformation1);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,projectinformation1Service.findAllSize(projectinformation1));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String shenhe1()throws Exception{
		List list=projectinformation1Service.findAll2(pageNow, pageSize, projectinformation1);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,projectinformation1Service.findAllSize2(projectinformation1));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String view1()throws Exception{
		this.projectinformation1=projectinformation1Service.find(projectinformation1.getPname());
		return SUCCESS;
	}
	public String view11()throws Exception{	
			projectinformation1Service.update(projectinformation1);
			return SUCCESS;		
	}
	public String shenhe2()throws Exception{
		List list=projectinformation1Service.findAll3(pageNow, pageSize, projectinformation1);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,projectinformation1Service.findAllSize3(projectinformation1));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String view2()throws Exception{
		this.projectinformation1=projectinformation1Service.find(projectinformation1.getPname());
		return SUCCESS;
	}
	public String view22()throws Exception{	
			projectinformation1Service.update(projectinformation1);
			return SUCCESS;		
	}
	public String shenhe3()throws Exception{
		List list=projectinformation1Service.findAll4(pageNow, pageSize, projectinformation1);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,projectinformation1Service.findAllSize4(projectinformation1));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String view3()throws Exception{
		this.projectinformation1=projectinformation1Service.find(projectinformation1.getPname());
		return SUCCESS;
	}
	public String view33()throws Exception{	
			projectinformation1Service.update(projectinformation1);
			return SUCCESS;		
	}
	public String projectinformation1List1()throws Exception{
		List list=projectinformation1Service.findAll1(pageNow, pageSize, projectinformation1);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,projectinformation1Service.findAllSize1(projectinformation1));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String projectinformation1AddView()throws Exception{
		return SUCCESS;
	}
	public String projectinformation1Add()throws Exception{
		if (projectinformation1.getPname().length()!=0 && projectinformation1Service.find(projectinformation1.getPname())==null){
			projectinformation1Service.save(projectinformation1);
			return SUCCESS;
		}else{
			return ERROR;
		}
 }
	public String projectinformation1Delete()throws Exception{	
			projectinformation1Service.delete(projectinformation1.getPname());
			return SUCCESS;	
	}
	public String projectinformation1UpdateView()throws Exception{
		this.projectinformation1=projectinformation1Service.find(projectinformation1.getPname());
		return SUCCESS;
	}
	public String projectinformation1Update()throws Exception{	
			projectinformation1Service.update(projectinformation1);
			return SUCCESS;		
	}
}
