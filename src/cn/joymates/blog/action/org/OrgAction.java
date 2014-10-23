package cn.joymates.blog.action.org;

import java.util.List;
import java.util.Map;

import cn.joymates.blog.action.BaseAction;
import cn.joymates.blog.domain.Org;
import cn.joymates.blog.service.OrgService;
import cn.joymates.blog.utils.ServiceProxyFactory;

public class OrgAction extends BaseAction {
	public String showHome() {
		return "home";
	}
	
	public String find() {
		if (org == null) {
			org = new Org();
		}
		
		OrgService service = ServiceProxyFactory.getInstanceNoMybatis(new OrgService());
		List<Map<String, Object>> orgList = service.find(ec_rd, org, req);
		req.setAttribute("orgList", orgList);
		return "home";
	}
	
	private Org org;

	public Org getOrg() {
		return org;
	}

	public void setOrg(Org org) {
		this.org = org;
	}
	
	
}
