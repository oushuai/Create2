package org.etspace.create.action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import org.etspace.create.vo.Projectinformation;
import org.etspace.create.service.IProjectinformationService;
import org.etspace.create.tool.Pager;
import java.util.List;
import java.util.Map;
public class ProjectinformationAction extends ActionSupport{
	private Projectinformation projectinformation;
	private IProjectinformationService projectinformationService;
	private String pnum; 
	private String leadernum; 
	private int pageNow=1;
	private int pageSize=10;  
	public Projectinformation getProjectinformation() {
		return projectinformation;
	}
	public void setProjectinformation(Projectinformation projectinformation) {
		this.projectinformation = projectinformation;
	}
	public IProjectinformationService getProjectinformationService() {
		return projectinformationService;
	}
	public void setProjectinformationService(IProjectinformationService projectinformationService) {
		this.projectinformationService = projectinformationService;
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
	public String getPnum() {
		return pnum;
	}
	public void setPnum(String pnum) {
		this.pnum = pnum;
	}
	public String getLeadernum() {
		return leadernum;
	}
	public void setLeadernum(String leadernum) {
		this.leadernum = leadernum;
	}
	public String execute()throws Exception{
		return SUCCESS;
	}
	public String projectinformationList()throws Exception{
		List list=projectinformationService.findAll(pageNow, pageSize, projectinformation);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,projectinformationService.findAllSize(projectinformation));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String projectinformationList1()throws Exception{
		
		List list=projectinformationService.findAll1(pageNow, pageSize, projectinformation);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,projectinformationService.findAllSize1(projectinformation));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String projectinformationAddView()throws Exception{
		return SUCCESS;
	}
	public String projectinformationAdd()throws Exception{
		if (projectinformation.getPnum().length()!=0 && projectinformationService.find(projectinformation.getPnum())==null){
			projectinformationService.save(projectinformation);
			return SUCCESS;
		}else{
			return ERROR;
		}
 }
	public String projectinformationDelete()throws Exception{	
			projectinformationService.delete(projectinformation.getPnum());
			return SUCCESS;	
	}
	public String projectinformationUpdateView()throws Exception{
		this.projectinformation=projectinformationService.find(projectinformation.getPnum());
		return SUCCESS;
	}
	public String projectinformationUpdate()throws Exception{	
			projectinformationService.update(projectinformation);
			return SUCCESS;		
	}
}
