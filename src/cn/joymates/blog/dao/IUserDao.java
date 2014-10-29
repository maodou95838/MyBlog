package cn.joymates.blog.dao;

import java.util.List;

import cn.joymates.blog.domain.Resource;
import cn.joymates.blog.domain.User;

public interface IUserDao extends BaseDao<User> {
	
	User findByUserId(User user);
	
	List<Resource> searchResourceUserId(User u);
}
