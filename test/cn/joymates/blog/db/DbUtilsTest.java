package cn.joymates.blog.db;

import java.sql.Connection;
import java.sql.SQLException;

import org.junit.Test;
import org.logicalcobwebs.proxool.ProxoolFacade;

import cn.joymates.blog.utils.db.DbUtils;

public class DbUtilsTest {

	@Test
	public void testGetConnectionWithoutServlet() {
		Connection conn = null;
		try {
			conn = DbUtils.getConnectionWithoutServlet();
			conn = ProxoolFacade.getDelegateConnection(conn);
//			conn = DbUtils.getConnectionWithoutServlet();
//			conn.createStatement();
			System.out.println("0000");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Test
	public void testGetConnection() {
		try {
			DbUtils.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
