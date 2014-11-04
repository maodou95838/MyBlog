package cn.joymates.blog.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;

import cn.joymates.blog.dao.BaseDao;
import cn.joymates.blog.dao.IRoleDao;
import cn.joymates.blog.dao.impl.BaseDaoImpl;
import cn.joymates.blog.dao.impl.RoleDaoImpl;
import cn.joymates.blog.domain.Resource;
import cn.joymates.blog.domain.Role;

public class RoleService extends BaseService<Role> {
	public RoleService() {
		dao = new RoleDaoImpl();
	}
	
	public void showResources(Role role, Resource resource, String ec_rd, HttpServletRequest req) {
		//已授权数据
		IRoleDao roleDao = new RoleDaoImpl();
		List<Resource> authedList = roleDao.findResouceByRoleId(role.getRoleId());
		
		List<String> authedStringList = new ArrayList<>(authedList.size());
		for (Resource re : authedList) {
			authedStringList.add(re.getResourceId());
		}
		req.setAttribute("authedResList", authedStringList);
		
		//全部数据，不包括树根
		BaseDao<Resource> resdao = new BaseDaoImpl<>();
		
		List<Map<String, Object>> allReses = null;
		
		if (resource != null && StringUtils.isNotEmpty(resource.getParentId())) {
			String lastsql = " and (this_.resource_type='" + Resource.TREE + "'" + 
						 	 " and this_.resource_url is not null or this_.resource_type !='1')"
						 	 + " and this_.parent_id like'" + resource.getParentId() + "%' ";
			allReses = resdao.getEcsideList(ec_rd, new Resource(), lastsql, req);
			
		} else {
			Resource r = new Resource();
			r.setResourceType(Resource.TREE);
			String lastsql = " and this_.resource_url is not null or this_.resource_type !='1' ";
			allReses = resdao.getEcsideList(ec_rd, r, lastsql, req);
		}
		
		req.setAttribute("resourceList", allReses);
		
		//过滤树
		Resource r1 = new Resource();
		r1.setResourceType(Resource.TREE);
		String filterSql = " and this_.parent_id is null";
		List<Resource> allRoots = resdao.selectList(r1, filterSql);
		Map<String, String> filterMap = new HashMap<>(allRoots.size());
		
		for (Resource re : allRoots) {
			filterMap.put(re.getResourceId(), re.getResourceTitle());
		}
		req.setAttribute("filterMap", filterMap);
		
	}
	
	public void auth(Role r, String resourceIds) {
		IRoleDao dao1 = (IRoleDao)dao;
		dao1.deleteById(r);
		Map<String, String> map = new HashMap<>();
		
		if (StringUtils.isEmpty(resourceIds)) {
			return;
		}
		
		for (String s : resourceIds.split(",")) {
			map.put("role_id", r.getRoleId());
			map.put("resource_id", s);
			dao1.saveResPrivilege(map);
		}
	
	}
}
