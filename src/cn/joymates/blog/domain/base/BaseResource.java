package cn.joymates.blog.domain.base;

public class BaseResource extends BaseVO {
	 
	public BaseResource() {
		tablename = "tb_resource";

		fieldMap.put("resourceId", "resource_id");
		fieldMap.put("resourceUrl", "resource_url");
		fieldMap.put("resourceDesc", "resource_desc");
		
		fieldMap.put("resourceOrder", "resource_order");
		fieldMap.put("parentId", "parent_id");
		fieldMap.put("parentTitle", "parent_title");
		fieldMap.put("resourceRemark", "resource_remark");
		
		fieldMap.put("resourceTitle", "resource_title");

		this.id = "resource_id";
	}
//	
	private String resourceId;
	private String resourceUrl;
	private String resourceDesc;
	
	private String resourceOrder;
	private String parentId;
	private String parentTitle;
	
	private String resourceRemark;
	private String resourceTitle;
	
	public String getResourceId() {
		return resourceId;
	}
	public void setResourceId(String resourceId) {
		this.resourceId = resourceId;
	}
	public String getResourceUrl() {
		return resourceUrl;
	}
	public void setResourceUrl(String resourceUrl) {
		this.resourceUrl = resourceUrl;
	}
	public String getResourceOrder() {
		return resourceOrder;
	}
	public void setResourceOrder(String resourceOrder) {
		this.resourceOrder = resourceOrder;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public String getParentTitle() {
		return parentTitle;
	}
	public void setParentTitle(String parentTitle) {
		this.parentTitle = parentTitle;
	}
	public String getResourceRemark() {
		return resourceRemark;
	}
	public void setResourceRemark(String resourceRemark) {
		this.resourceRemark = resourceRemark;
	}
	public String getResourceTitle() {
		return resourceTitle;
	}
	public void setResourceTitle(String resourceTitle) {
		this.resourceTitle = resourceTitle;
	}
	public String getResourceDesc() {
		return resourceDesc;
	}
	public void setResourceDesc(String resourceDesc) {
		this.resourceDesc = resourceDesc;
	}
	
}
