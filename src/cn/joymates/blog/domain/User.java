package cn.joymates.blog.domain;

import java.util.List;
import java.util.Map;

import cn.joymates.blog.domain.base.BaseUser;

public class User extends BaseUser {
	/**
	 * 资源类型
	 */
	private String resourceType;
	
	/**
	 * 功能树map
	 */
	private Map<Resource, List<Resource>> funcTreeMap;

	public Map<Resource, List<Resource>> getFuncTreeMap() {
		return funcTreeMap;
	}

	public void setFuncTreeMap(Map<Resource, List<Resource>> funcTreeMap) {
		this.funcTreeMap = funcTreeMap;
	}

	public String getResourceType() {
		return resourceType;
	}

	public void setResourceType(String resourceType) {
		this.resourceType = resourceType;
	}

	
	
}
