package org.etspace.create.tool;
import java.util.Map;
import org.etspace.create.vo.User;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
public class LoginFilter extends AbstractInterceptor{
	public String intercept(ActionInvocation arg0) throws Exception {
		Map session=arg0.getInvocationContext().getSession();
		Object obj=session.get("user1");
		if(obj==null){
			return Action.LOGIN;
		}
		User user1=(User) obj;	
		session.put("user1",user1);
		return arg0.invoke();
	}
}
