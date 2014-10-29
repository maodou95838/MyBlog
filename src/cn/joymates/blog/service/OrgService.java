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
}
