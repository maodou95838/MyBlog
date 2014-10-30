package cn.joymates.blog.domain;

import java.util.Map;

import cn.joymates.blog.domain.base.BaseOrg;

import com.google.common.collect.ImmutableMap;

public class Org extends BaseOrg {
	public static final String LOGGOUT = "1";
	public static final String NOT_LOGGOUT = "0";
	
	/**
	 * 叶子节点
	 */
	public static final String LEAF = "1";
	public static final String NOT_LEAF = "0";
	
	/**
	 * 终结
	 */
	public static final String TERMINAL = "1";
	public static final String NOT_TERMINAL = "0";
	
	public static Map<String, String> logoutMap = 
			ImmutableMap.of(LOGGOUT, "注销",
							NOT_LOGGOUT, "未注销");
	
	public static Map<String, String> terminalMap = 
			ImmutableMap.of(TERMINAL, "否",
							NOT_TERMINAL, "是");
	
}
