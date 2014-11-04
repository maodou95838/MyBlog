package cn.joymates.blog.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import cn.joymates.blog.dao.IRoleDao;
import cn.joymates.blog.domain.Resource;
import cn.joymates.blog.domain.Role;
import cn.joymates.blog.utils.db.SessionFactoryUtil;

public class RoleDaoImpl extends BaseDaoImpl<Role> implements IRoleDao {

	@Override
	public List<Resource> findResouceByRoleId(String roleId) {
		SqlSession sess = SessionFactoryUtil.getSession();
		return sess.selectList("right.findResouceByRoleId", roleId);
	}

	@Override
	public void deleteById(Role r) {
		SqlSession sess = SessionFactoryUtil.getSession();
		sess.delete("deleteByRoleId", r.getRoleId());
		
	}

	@Override
	public void saveResPrivilege(Map<String, String> map) {
		SqlSession sess = SessionFactoryUtil.getSession();
		sess.insert("insertRolePrivilege", map);
	}
	
	
	
}
