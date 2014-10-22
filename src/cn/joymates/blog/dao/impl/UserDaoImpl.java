package cn.joymates.blog.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import cn.joymates.blog.dao.IUserDao;
import cn.joymates.blog.domain.Resource;
import cn.joymates.blog.domain.User;
import cn.joymates.blog.utils.db.SessionFactoryUtil;

public class UserDaoImpl extends BaseDAOImpl<User> implements IUserDao {
	
	public User findByUserId(User user) {
		SqlSession sess = SessionFactoryUtil.getSession();
		return sess.selectOne("right.findByIdAndPassword", user);
	}
	
	public List<Resource> searchResourceUserId(User u) {
		SqlSession sess = SessionFactoryUtil.getSession();
		return sess.selectList("right.searchResourceByUserId", u);
	}
}
