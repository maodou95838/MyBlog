package cn.joymates.blog.domain;

import java.util.Map;

import cn.joymates.blog.domain.base.BaseRole;

import com.google.common.collect.ImmutableMap;

public class Role extends BaseRole {
	public static final String LOGOUT = "1";
	public static final String NOT_LOGOUT = "0";
	
	public static Map<String, String> logoutMap = ImmutableMap.of(
			LOGOUT, "注销",
			NOT_LOGOUT, "未注销"
			);
	
}
