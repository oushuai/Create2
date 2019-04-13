package org.etspace.create.tool;
import java.util.Map;
import org.etspace.create.vo.User;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
public class AuthorityFilter extends AbstractInterceptor{
	public String intercept(ActionInvocation arg0) throws Exception {
		Map session=arg0.getInvocationContext().getSession();
		User user1=(User) session.get("user1");	
		if(user1.getType().compareTo("管理员")!=0){
			return Action.NONE;
		}
		return arg0.invoke();
	}
}
