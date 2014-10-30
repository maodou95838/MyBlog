package cn.joymates.blog.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;

import cn.joymates.blog.domain.User;
import cn.joymates.blog.service.UserService;
import cn.joymates.blog.utils.ServiceProxyFactory;

/**
 * 功能点过滤器
 * @author Jackie Hou
 *
 */
public class FunctionPointFilter implements Filter {

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)arg0;
		HttpServletResponse resp = (HttpServletResponse)arg1;
		HttpSession session = req.getSession();
		
		String isTree = req.getParameter("tree");
		String parentId = req.getParameter("parentId");
		
		final String TREE = "1";
		if (StringUtils.isEmpty(isTree) || !isTree.equals(TREE)) {
			arg2.doFilter(req, resp);
			
		} else {
			User u = new User();
			User u1 = (User)session.getAttribute("loggedUser");
			
			u.setUserId(u1.getUserId());
			u.setResourceType(parentId);//查找非树功能点
			
			UserService service = ServiceProxyFactory.getInstance(new UserService());
			session.setAttribute("inPageFuncList", service.getFuncResource(u));
			arg2.doFilter(req, resp);
		}

	}

	@Override
	public void destroy() {
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}


}
