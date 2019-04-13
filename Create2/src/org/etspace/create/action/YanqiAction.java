package org.etspace.create.action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import org.etspace.create.vo.Yanqi;
import org.etspace.create.service.IYanqiService;
import org.etspace.create.tool.Pager;
import java.util.List;
import java.util.Map;
public class YanqiAction extends ActionSupport{
	private Yanqi yanqi;
	private IYanqiService yanqiService;
	private int pageNow=1;
	private int pageSize=10;  
	public Yanqi getYanqi() {
		return yanqi;
	}
	public void setYanqi(Yanqi yanqi) {
		this.yanqi = yanqi;
	}
	public IYanqiService getYanqiService() {
		return yanqiService;
	}
	public void setYanqiService(IYanqiService yanqiService) {
		this.yanqiService = yanqiService;
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
	public String yanqiList()throws Exception{
		List list=yanqiService.findAll(pageNow, pageSize, yanqi);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,yanqiService.findAllSize(yanqi));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String shenhe7()throws Exception{
		List list=yanqiService.findAll(pageNow, pageSize, yanqi);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,yanqiService.findAllSize(yanqi));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String view7()throws Exception{
		this.yanqi=yanqiService.find(yanqi.getPname());
		return SUCCESS;
	}
	public String view77()throws Exception{	
			yanqiService.update(yanqi);
			return SUCCESS;		
	}
	public String yanqiList1()throws Exception{
		List list=yanqiService.findAll1(pageNow, pageSize, yanqi);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,yanqiService.findAllSize1(yanqi));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String yanqiAddView()throws Exception{
		return SUCCESS;
	}
	public String yanqiAdd()throws Exception{
		if (yanqi.getPname().length()!=0 && yanqiService.find(yanqi.getPname())==null){
			yanqiService.save(yanqi);
			return SUCCESS;
		}else{
			return ERROR;
		}
 }
	public String yanqiDelete()throws Exception{	
			yanqiService.delete(yanqi.getPname());
			return SUCCESS;	
	}
	public String yanqiUpdateView()throws Exception{
		this.yanqi=yanqiService.find(yanqi.getPname());
		return SUCCESS;
	}
	public String yanqiUpdate()throws Exception{	
			yanqiService.update(yanqi);
			return SUCCESS;		
	}
}
