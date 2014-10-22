package cn.joymates.blog.domain;

import java.util.List;
import java.util.Map;

import cn.joymates.blog.domain.base.BaseUser;

public class User extends BaseUser {
	private Map<String, List<Resource>> resourceMap;

	public Map<String, List<Resource>> getResourceMap() {
		return resourceMap;
	}

	public void setResourceMap(Map<String, List<Resource>> resourceMap) {
		this.resourceMap = resourceMap;
	}
	
	
}
