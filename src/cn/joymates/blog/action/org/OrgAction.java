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
		
		List<Map<String, Object>> orgList = service.find(ec_rd, org, req);
		req.setAttribute("orgList", orgList);
		return "home";
	}
	
	public String showAddUI() {
		Org org = new Org();
		org.setIsLeaf(Org.NOT_LEAF);
		org.setIsLogout(Org.NOT_LOGGOUT);
		
		List<Org> fatherOrg = service.selectList(org);
		req.setAttribute("fatherOrg", fatherOrg);
		return "addUI";
	}
	
	public String add() {
		int puuid = org.getParentUuid();
		
		if (puuid == -1) {
			org.setIsLeaf(Org.LEAF);
			org.setParentUuid(null);
		} else {
			org.setIsLeaf(Org.NOT_LEAF);
		}
		
		service.save(org);
		return "home";
	}
	
	private OrgService service = ServiceProxyFactory.getInstanceNoMybatis(new OrgService());
	
	private Org org;

	public Org getOrg() {
		return org;
	}

	public void setOrg(Org org) {
		this.org = org;
	}
	
	
}
