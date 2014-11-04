package cn.joymates.blog.domain;

import java.util.List;
import java.util.Map;
import java.util.Objects;

import cn.joymates.blog.domain.base.BaseResource;

import com.google.common.collect.ImmutableMap;

public class Resource extends BaseResource implements Comparable<Resource> {
	/**
	 * 资源类型
	 */
	public static final String TREE = "1";
	public static final String BUTTON = "2";
	public static final String HYPER_LINK = "3";
	
	public static Map<String, String> resourceTypeMap = ImmutableMap.of(
				TREE, "树",
				BUTTON, "按钮",
				HYPER_LINK, "超链接"
			);
	
	
	
	private List<Resource> childrenResouce;
	
	public List<Resource> getChildrenResouce() {
		return childrenResouce;
	}

	public void setChildrenResouce(List<Resource> childrenResouce) {
		this.childrenResouce = childrenResouce;
	}

	@Override
	public int compareTo(Resource o) {
		String id1 = this.getResourceId();
		String id2 = o.getResourceId();
		return id1.compareTo(id2);
	}

	@Override
	public boolean equals(Object obj) {
		return Objects.equals(this.getResourceId(), ((Resource)obj).getResourceId());
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(this.getResourceId());
	}

	
}
