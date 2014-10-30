package cn.joymates.blog.action.org;

import java.util.HashMap;
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
		
		org.setIsLogout(Org.NOT_LOGGOUT);
		List<Map<String, Object>> orgList = service.find(ec_rd, org, req);
		
		Org org1 = new Org();
		org1.setIsLeaf(Org.NOT_LEAF);
		List<Org> org1List = service.selectList(org1);
		
		Map<String, String> parentMap = new HashMap<>();
		for (Org o : org1List) {
			parentMap.put(o.getUuid().toString(), o.getName());
		}
		
		req.setAttribute("parentMap", parentMap);
		req.setAttribute("orgList", orgList);
		req.setAttribute("logoutMap", Org.logoutMap);
		return "home";
	}
	
	public String showAddUI() {
		Org org = new Org();
		org.setIsLogout(Org.NOT_LOGGOUT);
		org.setIsTerminal(Org.NOT_TERMINAL);
		
		List<Org> fatherOrg = service.selectList(org);
		req.setAttribute("fatherOrg", fatherOrg);
		req.setAttribute("terminalMap", Org.terminalMap);
		return "addUI";
	}
	
	public String add() {
		service.save(org);
		return "home";
	}
	
	public String modifyUI() {
		org = service.findDetail(org, req);
		return "modifyUI";
	}
	
	public String modify() {
		service.update(org);
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
