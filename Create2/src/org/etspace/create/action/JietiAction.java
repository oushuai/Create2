package org.etspace.create.action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import org.etspace.create.vo.Jieti;
import org.etspace.create.service.IJietiService;
import org.etspace.create.tool.Pager;
import java.util.List;
import java.util.Map;
public class JietiAction extends ActionSupport{
	private Jieti jieti;
	private IJietiService jietiService;
	private int pageNow=1;
	private int pageSize=10;  
	public Jieti getJieti() {
		return jieti;
	}
	public void setJieti(Jieti jieti) {
		this.jieti = jieti;
	}
	public IJietiService getJietiService() {
		return jietiService;
	}
	public void setJietiService(IJietiService jietiService) {
		this.jietiService = jietiService;
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
	public String jietiList()throws Exception{
		List list=jietiService.findAll(pageNow, pageSize, jieti);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,jietiService.findAllSize(jieti));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String shenhe5()throws Exception{
		List list=jietiService.findAll2(pageNow, pageSize, jieti);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,jietiService.findAllSize2(jieti));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String view5()throws Exception{
		this.jieti=jietiService.find(jieti.getPname());
		return SUCCESS;
	}
	public String view55()throws Exception{	
			jietiService.update(jieti);
			return SUCCESS;		
	}
	public String shenhe6()throws Exception{
		List list=jietiService.findAll3(pageNow, pageSize, jieti);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,jietiService.findAllSize3(jieti));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String view6()throws Exception{
		this.jieti=jietiService.find(jieti.getPname());
		return SUCCESS;
	}
	public String view66()throws Exception{	
			jietiService.update(jieti);
			return SUCCESS;		
	}
	public String jietiList1()throws Exception{
		List list=jietiService.findAll1(pageNow, pageSize, jieti);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,jietiService.findAllSize1(jieti));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String jietiAddView()throws Exception{
		return SUCCESS;
	}
	public String jietiAdd()throws Exception{
		if (jieti.getPname().length()!=0 && jietiService.find(jieti.getPname())==null){
			jietiService.save(jieti);
			return SUCCESS;
		}else{
			return ERROR;
		}
 }
	public String jietiDelete()throws Exception{	
			jietiService.delete(jieti.getPname());
			return SUCCESS;	
	}
	public String jietiUpdateView()throws Exception{
		this.jieti=jietiService.find(jieti.getPname());
		return SUCCESS;
	}
	public String jietiUpdate()throws Exception{	
			jietiService.update(jieti);
			return SUCCESS;		
	}
}
