package cn.joymates.blog.domain.base;

public class BaseOrg extends BaseVO {

	public BaseOrg() {
		tablename = "t_org";

		fieldMap.put("uuid", "uuid");
		fieldMap.put("name", "name");
		fieldMap.put("desc1", "desc1");

		fieldMap.put("parentUuid", "parent_uuid");
		fieldMap.put("isLogout", "is_logout");
		fieldMap.put("logoutReason", "logout_reason");
		fieldMap.put("isLeaf", "is_leaf");
		
		fieldMap.put("remark", "remark");
		fieldMap.put("remark1", "remark1");
		fieldMap.put("remark2", "remark2");

		this.id = "uuid";
	}

	private Integer uuid;
	private String name;
	private String desc1;
	
	private Integer parentUuid;
	private String isLogout;
	private String logoutReason;
	private String isLeaf;

	private String remark;
	private String remark1;
	private String remark2;

	public Integer getUuid() {
		return uuid;
	}

	public void setUuid(Integer uuid) {
		this.uuid = uuid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDesc1() {
		return desc1;
	}

	public void setDesc1(String desc1) {
		this.desc1 = desc1;
	}

	public Integer getParentUuid() {
		return parentUuid;
	}

	public void setParentUuid(Integer parentUuid) {
		this.parentUuid = parentUuid;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getRemark1() {
		return remark1;
	}

	public void setRemark1(String remark1) {
		this.remark1 = remark1;
	}

	public String getRemark2() {
		return remark2;
	}

	public void setRemark2(String remark2) {
		this.remark2 = remark2;
	}

	public String getIsLogout() {
		return isLogout;
	}

	public void setIsLogout(String isLogout) {
		this.isLogout = isLogout;
	}

	public String getLogoutReason() {
		return logoutReason;
	}

	public void setLogoutReason(String logoutReason) {
		this.logoutReason = logoutReason;
	}

	public String getIsLeaf() {
		return isLeaf;
	}

	public void setIsLeaf(String isLeaf) {
		this.isLeaf = isLeaf;
	}

}
