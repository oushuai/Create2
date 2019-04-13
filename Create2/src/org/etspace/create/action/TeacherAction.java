package org.etspace.create.action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import org.etspace.create.vo.Teacher;
import org.etspace.create.service.ITeacherService;
import org.etspace.create.tool.Pager;
import java.util.List;
import java.util.Map;
public class TeacherAction extends ActionSupport{
	private Teacher teacher;
	private ITeacherService teacherService;
	private int pageNow=1;
	private int pageSize=10;  
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	public ITeacherService getTeacherService() {
		return teacherService;
	}
	public void setTeacherService(ITeacherService teacherService) {
		this.teacherService = teacherService;
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
	public String teacherList()throws Exception{
		List list=teacherService.findAll(pageNow, pageSize, teacher);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,teacherService.findAllSize(teacher));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String teacherList1()throws Exception{
		List list=teacherService.findAll(pageNow, pageSize, teacher);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,teacherService.findAllSize(teacher));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String teacherAddView()throws Exception{
		return SUCCESS;
	}
	public String teacherAdd()throws Exception{
		if (teacher.getName().length()!=0 && teacherService.find(teacher.getName())==null){
			teacherService.save(teacher);
			return SUCCESS;
		}else{
			return ERROR;
		}
 }
	public String teacherDelete()throws Exception{
		if (teacher.getName().trim().compareTo("admin")!=0){
			teacherService.delete(teacher.getName());
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	public String teacherUpdateView()throws Exception{
		this.teacher=teacherService.find(teacher.getName());
		return SUCCESS;
	}
	public String teacherUpdate()throws Exception{
		if (teacher.getName().trim().compareTo("admin")!=0){
			teacherService.update(teacher);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
}
