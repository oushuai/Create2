package org.etspace.create.action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import org.etspace.create.vo.Pingweiinformation;
import org.etspace.create.service.IPingweiinformationService;
import org.etspace.create.tool.Pager;
import java.util.List;
import java.util.Map;
public class PingweiinformationAction extends ActionSupport{
	private Pingweiinformation pingweiinformation;
	private IPingweiinformationService pingweiinformationService;
	private int pageNow=1;
	private int pageSize=10;  
	public Pingweiinformation getPingweiinformation() {
		return pingweiinformation;
	}
	public void setPingweiinformation(Pingweiinformation pingweiinformation) {
		this.pingweiinformation = pingweiinformation;
	}
	public IPingweiinformationService getPingweiinformationService() {
		return pingweiinformationService;
	}
	public void setPingweiinformationService(IPingweiinformationService pingweiinformationService) {
		this.pingweiinformationService = pingweiinformationService;
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
	public String pingweiinformationList()throws Exception{
		List list=pingweiinformationService.findAll(pageNow, pageSize, pingweiinformation);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,pingweiinformationService.findAllSize(pingweiinformation));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String pingweiinformationList1()throws Exception{
		List list=pingweiinformationService.findAll(pageNow, pageSize, pingweiinformation);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,pingweiinformationService.findAllSize(pingweiinformation));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String pingweiinformationAddView()throws Exception{
		return SUCCESS;
	}
	public String pingweiinformationAdd()throws Exception{
		if (pingweiinformation.getName().length()!=0 && pingweiinformationService.find(pingweiinformation.getName())==null){
			pingweiinformationService.save(pingweiinformation);
			return SUCCESS;
		}else{
			return ERROR;
		}
 }
	public String pingweiinformationDelete()throws Exception{
		if (pingweiinformation.getName().trim().compareTo("admin")!=0){
			pingweiinformationService.delete(pingweiinformation.getName());
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	public String pingweiinformationUpdateView()throws Exception{
		this.pingweiinformation=pingweiinformationService.find(pingweiinformation.getName());
		return SUCCESS;
	}
	public String pingweiinformationUpdate()throws Exception{
		if (pingweiinformation.getName().trim().compareTo("admin")!=0){
			pingweiinformationService.update(pingweiinformation);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
}
