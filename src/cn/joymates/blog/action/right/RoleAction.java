package cn.joymates.blog.action.right;

import cn.joymates.blog.action.BaseAction;
import cn.joymates.blog.domain.Resource;
import cn.joymates.blog.domain.Role;
import cn.joymates.blog.service.RoleService;
import cn.joymates.blog.utils.ServiceProxyFactory;
import cn.joymates.blog.utils.UUIDGenerator;

public class RoleAction extends BaseAction {
	public String showHome() {
		return "showHomeUI";
	}
	
	public String find() {
		if (role == null) {
			role = new Role();
		}
		
		req.setAttribute("roleList", roleService.getEcsideList(ec_rd, role, req)); 
		req.setAttribute("logoutMap", Role.logoutMap);
		return "find";
	}
	
	public String showAddUI() {
		return "showAddUI";
	}
	
	public String add() {
		role.setRoleId(UUIDGenerator.getUUID());
		role.setIsLogout(Role.NOT_LOGOUT);
		
		roleService.save(role);
		return "showHomeUI";
	}
	
	public String modifyUI() {
		role = roleService.selectOne(role);
		return "modifyUI";
	}
	
	public String modify() {
		roleService.update(role);
		return "showHomeUI";
	}
	
	public String authUI() {
		RoleService service = ServiceProxyFactory.getInstance(new RoleService());
		service.showResources(role, resource, ec_rd, req);
		
		req.setAttribute("resourceTypeMap", Resource.resourceTypeMap);
		return "authUI";
	}
	
	public String auth() {
		RoleService service = ServiceProxyFactory.getInstance(new RoleService());
		service.auth(role, resourceIds);
		return "showHomeUI";
	}
	
	private RoleService roleService = ServiceProxyFactory.getInstanceNoMybatis(new RoleService());
	
	private Role role;
	
	private String resourceIds;

	private Resource resource;
	
	public Resource getResource() {
		return resource;
	}

	public void setResource(Resource resource) {
		this.resource = resource;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public String getResourceIds() {
		return resourceIds;
	}

	public void setResourceIds(String resourceIds) {
		this.resourceIds = resourceIds;
	}

}
