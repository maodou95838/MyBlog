package cn.joymates.blog.db;

import static org.junit.Assert.fail;

import java.math.BigDecimal;
import java.util.Date;
import java.util.Map;

import org.junit.Test;

import cn.joymates.blog.domain.User;
import cn.joymates.blog.utils.db.Bean2SqlUtils;

public class SqlGeneratorTest {

	@Test
	public void testGetSelectSqlT() {
		User u = new User();
		u.setCreatePerson("stars");
		u.setCreateTime(new Date());
		u.setUserId("1111111");
		u.setUserId("userId");;
		u.setPassword1("123123");
		
		String selsql = Bean2SqlUtils.getSelectSql(u);
		System.out.println(selsql);
		
	}

	@Test
	public void testGetSelectSqlTString() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetSelectOneSql() {
		User u = new User();
		u.setCreatePerson("stars");
		u.setCreateTime(new Date());
		u.setUserId("1111111");
		u.setUserId("userId");;
		u.setPassword1("123123");
		String selsql = Bean2SqlUtils.getSelectOneSql(u);
		System.out.println(selsql);
	}

	@Test
	public void testGetInsertSql() {
		User u = new User();
		u.setCreatePerson("stars");
		u.setCreateTime(new Date());
		u.setUserId("1111111");
		u.setUserId("userId");;
		u.setPassword1("123123");
		String selsql = Bean2SqlUtils.getInsertSql(u);
		System.out.println(selsql);
	}

	@Test
	public void testGetUpdateSql() {
		User u = new User();
		u.setCreatePerson("stars");
		u.setCreateTime(new Date());
		u.setUserId("1111111");
		u.setUserId("userId");;
		u.setPassword1("123123");
		String selsql = Bean2SqlUtils.getUpdateSql(u);
		System.out.println(selsql);
	}

	@Test
	public void testGetDeleteSql() {
		User u = new User();
		u.setCreatePerson("stars");
		u.setCreateTime(new Date());
		u.setUserId("1111111");
		u.setUserId("userId");;
		u.setPassword1("123123");
		String selsql = Bean2SqlUtils.getDeleteSql(u);
		System.out.println(selsql);
	}
	
	@Test
	public void testGetValueMap() {
		User u = new User();
		u.setCreatePerson("stars");
		u.setCreateTime(new Date());
		u.setUserId("1111111");
		u.setUserId("userId");;
		u.setPassword1("123123");
		
		Map<String, String> map = Bean2SqlUtils.getValueMap(u);
		System.out.println(map);
		
	}

}
