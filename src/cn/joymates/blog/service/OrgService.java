package cn.joymates.blog.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.joymates.blog.dao.impl.OrgDaoImpl;
import cn.joymates.blog.domain.Org;

public class OrgService extends BaseService<Org> {
	
	public List<Map<String, Object>> find(String ecRd, Org org, HttpServletRequest req) {
		return dao.getEcsideList(ecRd, org, req);
	}
	
	public OrgService() {
		dao = new OrgDaoImpl();
	}
	
	public void saveOrg(Org org) {
		int puuid = org.getParentUuid();
		org.setIsLogout(Org.NOT_LOGGOUT);
		
		//lonely node!
		if (puuid == -1) {
			org.setParentUuid(null);
			org.setIsLeaf(Org.LEAF);
			dao.save(org);
			return ;
		}
		
		org.setIsLeaf(Org.LEAF);
		dao.save(org);
		
		//update father node to a not leaf node!
		Org updateOrg = new Org();
		updateOrg.setUuid(puuid);
		updateOrg.setIsLeaf(Org.NOT_LEAF);
		
		dao.update(updateOrg);
	}
	
	public Org findDetail(Org org, HttpServletRequest req) {
		org = dao.selectOne(org);
		
		Org org1 = new Org();
		org1.setIsLogout(Org.NOT_LOGGOUT);
		org1.setIsTerminal(Org.NOT_TERMINAL);
		
		List<Org> fatherOrg = dao.selectList(org1);
		req.setAttribute("fatherOrg", fatherOrg);
		req.setAttribute("terminalMap", Org.terminalMap);
		return org;
	}
	
//	public void modify(Org org) {
//		Org org1 = null;
//		if (org.getIsLogout().equals(Org.LOGGOUT)) {
//			org1 = dao.selectOne(org);
//			
//			//非叶子节点不能删除
//			if (org1.getIsLeaf().equals(Org.LEAF)) {
//				dao.update(org);
//			}
//		}
//		
//		dao.update(org);
//		
//		
//	}
}
