package cn.joymates.blog.action.right;

import cn.joymates.blog.action.BaseAction;
import cn.joymates.blog.domain.User;
import cn.joymates.blog.service.UserService;
import cn.joymates.blog.utils.ServiceProxyFactory;

/**
 * 用户action
 * 
 * @author Jackie Hou
 *
 */
public class UserAction extends BaseAction {
	
	public String login() {
		User u = userService.login(user);
		
		if (u == null) {
			return "fail";
		}
		
		session.setAttribute("loggedUser", u);
		return SUCCESS;
	}
	
	private UserService userService = ServiceProxyFactory.getInstance(new UserService());
	
	private User user;
	
	private String validateCode;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getValidateCode() {
		return validateCode;
	}

	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}
	
	
}
