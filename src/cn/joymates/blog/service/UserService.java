package cn.joymates.blog.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import cn.joymates.blog.dao.IUserDao;
import cn.joymates.blog.dao.impl.UserDaoImpl;
import cn.joymates.blog.domain.Resource;
import cn.joymates.blog.domain.User;

public class UserService {
	IUserDao dao = new UserDaoImpl();
	
	public void save() {
		//
	}
	
	public Map<Resource, List<Resource>> login(User user) {
		user = dao.findByUserId(user);
		if (user == null) {
			return null;
		}
		
		return boxing(dao.searchResourceUserId(user));
	}
	
	private Map<Resource, List<Resource>> boxing(List<Resource> list) {
		if (list == null || list.size() == 0) {
			return null;
		}
		
		//get function root
		List<Resource> rootNodeList = new ArrayList<>();
		for (Iterator<Resource> it1 = list.iterator(); it1.hasNext();) {
			Resource r = it1.next();
			if (r.getParentId() == null) {
				rootNodeList.add(r);
				it1.remove();
			}
		}
		
		Collections.sort(rootNodeList);
		
		//set leaf node to root
		Map<Resource, List<Resource>> rootNodeMap = new TreeMap<>();
		for (Resource key : rootNodeList) {
			List<Resource> leafList = new ArrayList<>();
			
			for (Iterator<Resource> it2 = list.iterator(); it2.hasNext();) {
				Resource r = it2.next();
				if (key.getResourceId().equals(r.getParentId())) {
					leafList.add(r);
					it2.remove();
				}
				
			}
			
			Collections.sort(leafList);
			rootNodeMap.put(key, leafList);
		}
	
		return rootNodeMap;
	}
}
