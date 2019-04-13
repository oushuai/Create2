package org.etspace.create.action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import org.etspace.create.vo.Studentinformation;
import org.etspace.create.service.IStudentinformationService;
import org.etspace.create.tool.Pager;
import java.util.List;
import java.util.Map;
public class StudentinformationAction extends ActionSupport{
	private Studentinformation studentinformation;
	private IStudentinformationService studentinformationService;
	private int pageNow=1;
	private int pageSize=10;  
	public Studentinformation getStudentinformation() {
		return studentinformation;
	}
	public void setStudentinformation(Studentinformation studentinformation) {
		this.studentinformation = studentinformation;
	}
	public IStudentinformationService getStudentinformationService() {
		return studentinformationService;
	}
	public void setStudentinformationService(IStudentinformationService studentinformationService) {
		this.studentinformationService = studentinformationService;
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
	public String studentinformationList()throws Exception{
		List list=studentinformationService.findAll(pageNow, pageSize, studentinformation);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,studentinformationService.findAllSize(studentinformation));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String studentinformationList1()throws Exception{
		List list=studentinformationService.findAll(pageNow, pageSize, studentinformation);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,studentinformationService.findAllSize(studentinformation));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String studentinformationAddView()throws Exception{
		return SUCCESS;
	}
	public String studentinformationAdd()throws Exception{
		if (studentinformation.getNum().length()!=0 && studentinformationService.find(studentinformation.getNum())==null){
			studentinformationService.save(studentinformation);
			return SUCCESS;
		}else{
			return ERROR;
		}
 }
	public String studentinformationDelete()throws Exception{		
			studentinformationService.delete(studentinformation.getNum());
			return SUCCESS;			
		}	
	public String studentinformationUpdateView()throws Exception{
		this.studentinformation=studentinformationService.find(studentinformation.getNum());
		return SUCCESS;
	}
	public String studentinformationUpdate()throws Exception{	
			studentinformationService.update(studentinformation);
			return SUCCESS;
	}
}
