﻿package cn.joymates.blog.utils.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.ecside.easydataaccess.ConnectionUtils;
import org.ecside.table.limit.FilterSet;
import org.ecside.table.limit.Limit;
import org.ecside.table.limit.Sort;
import org.ecside.util.RequestUtil;

/**
 * ecside数据分页工具类
 * 
 * @author Jackie Hou
 */
public final class EcsideDataFinder {
	private EcsideDataFinder() {
		throw new UnsupportedOperationException("Tool class can not be instance!");
	}
	
	/**
	 * 获取分页的总条数
	 * @param countSql
	 * @return number
	 */
	private static int getResultCount(String countSql) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rest = null;
		int number = -1;
		
		try {
			conn = DbUtils.getConnection();
//			pstmt = ConnectionUtils.prepareStatement(conn, countSql);
			pstmt = conn.prepareStatement(countSql);
			rest = pstmt.executeQuery();
			
			if (rest.next()) {
				number=rest.getInt(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			number=-1;
		} finally {
			DbUtils.closeResultset(rest);
			DbUtils.closeStatement(pstmt);
		}
		
		return number;
	}
	
		
	/**
	 * 大数据量详细结果集  获取数据进行分页
	 * param startRow 开始数   endRow结束数  
	 * return list
	 */
	private static List<Map<String, Object>> getResult(int startRow, int endRow, 
			Map sortValueMap, Map filterPropertyMap, String resultSql){
		int size = endRow - startRow;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rest = null;
		List<Map<String, Object>> list = null;
		
		try {
			int end = size + startRow;
			conn = DbUtils.getConnection();
			
//			pstmt = ConnectionUtils.prepareStatement(conn, resultSql);
			pstmt = conn.prepareStatement(resultSql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, end);
			rest = pstmt.executeQuery();
			
			List<String> columnName = Bean2SqlUtils.getColumnName(rest);
			list = new ArrayList<>();
			
			while (rest!=null && rest.next()) {
				Map<String, Object> info =  new HashMap<>();
				Bean2SqlUtils.buildRecord(rest, columnName.toArray(new String[columnName.size()]), info);
				list.add(info);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DbUtils.closeResultset(rest);
			DbUtils.closeStatement(pstmt);
		}
		return list;
	}
	
	/**
	 * 获取ecside结果
	 * @param ec_rd ：每页行数
	 * @param countSql ： 结果总数 
	 * @param resultsql ： 结果数据
	 * @param req ： httpServletRequest
	 * @return
	 */
	public static List<Map<String, Object>> getEcsideList(String ec_rd, String countSql, String resultsql,
			HttpServletRequest req) {
		//default page size
		int ecRd = 12;
		if (ec_rd != null && !ec_rd.equals("0")) {
			ecRd = Integer.parseInt(ec_rd);
		}
		
		//get count
		int totalRows = RequestUtil.getTotalRowsFromRequest(req);
		totalRows = totalRows < 0 ? getResultCount(countSql) : totalRows;
		
		Limit limit = RequestUtil.getLimit(req, totalRows, ecRd);
		int[] rowStartEnd = new int[] {limit.getRowStart(), limit.getRowEnd()};
		Sort sort = limit.getSort();
		
		Map sortValueMap = sort.getSortValueMap(); 
		FilterSet filterSet = limit.getFilterSet();
		Map filterPropertyMap = filterSet.getPropertyValueMap();
		
		return (getResult(rowStartEnd[0], rowStartEnd[1],
				sortValueMap, filterPropertyMap, resultsql));
	}
}