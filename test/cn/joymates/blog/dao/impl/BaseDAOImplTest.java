package cn.joymates.blog.dao.impl;

import java.util.Date;

import org.junit.Test;

import cn.joymates.blog.dao.BaseDAO;
import cn.joymates.blog.domain.Org;
import cn.joymates.blog.domain.User;
import cn.joymates.blog.utils.UUIDGenerator;

public class BaseDAOImplTest {

	@Test
	public void testSelectOne() {
		User u = new User();
		u.setCreatePerson("stars");
		u.setCreateTime(new Date());
		u.setUuid("B6C98F0D327A4BCCB5D063C0269ABDD2");
		u.setUserId("userId");;
		u.setPassword1("123123");
		
		BaseDAO<User> dao = new BaseDAOImpl<>();
		User u1 = dao.selectOne(u);
		System.out.println(u1);
	}

	@Test
	public void testSave() {
		User u = new User();
		u.setCreatePerson("stars");
		u.setCreateTime(new Date());
		u.setUuid(UUIDGenerator.getUUID());
		u.setUserId("userId");;
		u.setPassword1("123123");
		
		BaseDAO dao = new BaseDAOImpl();
		int i = dao.save(u);
		System.out.println(i);
	}
	
	@Test
	public void testAutoIncrementId() {
		Org org = new Org();
		org.setName("省委组织部");
		org.setDesc1("dfklsjlsdafj");
		org.setParentUuid(null);
		
		org.setRemark("my remark");
		
		BaseDAO<Org> dao = new BaseDAOImpl<>();
		int i = dao.save(org);
		System.out.println(i);
	}

}
