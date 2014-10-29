package cn.joymates.blog.domain.base;

import java.util.HashMap;
import java.util.Map;

public abstract class BaseVO {
	protected String tablename = "";
	protected Map<String, String> fieldMap = new HashMap<>();
	protected String id;
	
	public String getTablename() {
		return tablename;
	}
	public Map<String, String> getFieldMap() {
		return fieldMap;
	}
	public String getId() {
		return id;
	}
	
}
