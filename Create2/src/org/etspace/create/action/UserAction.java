package org.etspace.create.action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import org.etspace.create.vo.User;
import org.etspace.create.service.IUserService;
import org.etspace.create.tool.Pager;
import java.util.List;
import java.util.Map;
public class UserAction extends ActionSupport{
	private User user;
	private IUserService userService;
	private int pageNow=1;
	private int pageSize=10;  
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public IUserService getUserService() {
		return userService;
	}
	public void setUserService(IUserService userService) {
		this.userService = userService;
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
	public String userSetPwdView()throws Exception{
		Map session=(Map)ActionContext.getContext().getSession();
		user=userService.find(((User)session.get("user1")).getUsername());
		return SUCCESS;
	}
	public String userSetPwd()throws Exception{
		if (user.getPassword().length()!=0){
			userService.update(user);
			User user1=userService.check(user.getUsername(), user.getPassword());
			Map session=(Map)ActionContext.getContext().getSession();
			session.put("user1", user1);
			this.user=null;
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	public String login()throws Exception{
		if(user==null){
			return ERROR;
		}
		User user1=userService.check(user.getUsername(), user.getPassword());
		if(user1!=null){
			Map session=(Map)ActionContext.getContext().getSession();
			session.put("user1", user1);
			this.user=null;
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	public String logout()throws Exception{
		Map session=(Map)ActionContext.getContext().getSession();
		session.remove("user1");
		this.user=null;
		return SUCCESS;
	}	
	public String userList()throws Exception{
		List list=userService.findAll(pageNow, pageSize, user);
		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(pageNow,pageSize,userService.findAllSize(user));
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	public String userAddView()throws Exception{
		return SUCCESS;
	}
	public String userAdd()throws Exception{
		if (user.getUsername().length()!=0 && userService.find(user.getUsername())==null){
			userService.save(user);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	public String userDelete()throws Exception{
		Map session=(Map)ActionContext.getContext().getSession();
		if (user.getUsername().compareTo("admin")!=0 && user.getUsername().compareTo(((User)session.get("user1")).getUsername().trim())!=0){
			userService.delete(user.getUsername());
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	public String userUpdateView()throws Exception{
		this.user=userService.find(user.getUsername());
		return SUCCESS;
	}
	public String userUpdate()throws Exception{
		if (user.getUsername().trim().compareTo("admin")!=0){
			userService.update(user);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	public String userForgetView()throws Exception{
		this.user=userService.find(user.getUsername());
		return SUCCESS;
	}
	public String userForget()throws Exception{
		if (user.getUsername().trim().compareTo("admin")!=0){
			userService.update(user);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	public String userForgetValidateView()throws Exception{
		this.user=userService.find(user.getUsername());
		return SUCCESS;
	}
	public String userForgetValidate()throws Exception{
		if (user.getUsername().trim().compareTo("admin")!=0){
			userService.update(user);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	public String userResetPwd()throws Exception{
		user=userService.find(user.getUsername());		
		user.setPassword("88888888");	
		userService.update(user);
		Map session=(Map)ActionContext.getContext().getSession();
		if (user.getUsername().compareTo(((User)session.get("user1")).getUsername())==0){
			User user1=userService.check(user.getUsername(), user.getPassword());
			session.put("user1", user1);
		}
		return SUCCESS;
	}
	public String register() throws Exception{
		if(userService.exist(user.getUsername())){
			return ERROR;					
	}
		userService.save(user);
			return SUCCESS;
	}	
	
}