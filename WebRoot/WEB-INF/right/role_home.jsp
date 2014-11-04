<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.ecside.org" prefix="ec"%>
<jsp:include page="../top.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>组织机构首页</title>
</head>
<body>
	<form name="form1" id="form1" method="post"
		action="${pageContext.request.contextPath }/admin/right/role_find.html">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">

			<tr>
				<td height="30">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="62"
								background="${pageContext.request.contextPath }/images/nav04.gif">
								<table width="98%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="21"><img
											src="${pageContext.request.contextPath }/images/ico07.gif"
											width="20" height="18" /></td>
										<td width="538">查看内容：按角色名称：<input name="role.roleName"
											type="text" size="12" /> <span class="newfont06"> <input
												name="Submit4" type="submit" class="right-button02"
												value="查 询" /></td>
										<td width="144" align="left"></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td></td>
			</tr>
		</table>
	</form>
	<br /> &nbsp;&nbsp;&nbsp;
	<input type="button" class="right-button08" value="添加角色"
		onclick="javascript:window.location='${pageContext.request.contextPath}/admin/right/role_showAddUI.html'" name="show_add_ui" id="myid"/>
	<br />
	<br />
	<div align="center">
		<ec:table items="roleList" var="role1" retrieveRowsCallback="limit"
			action="${pageContext.request.contextPath }/admin/right/role_find.html"
			rowsDisplayed='12' pageSizeList="2,5,12,20,50,100"
			resizeColWidth="true" width="99%" listWidth="100%" height="600px"
			sortable="false" useAjax="false" style="align:center"
			autoIncludeParameters="true">
			<ec:row>
				<ec:column property="ROLE_NAME" title="角色名称" width="10%" />
				<ec:column property="ROLE_QUTOA" title="权" width="10%" />
				<ec:column property="CREATE_PERSON" title="创建用户" width="10%" />
				<ec:column property="IS_LOGOUT" title="是否注销" width="10%" mappingItem="logoutMap"/>
				<ec:column property="LOGOUT_REASON" title="注销原因" width="10%" />
				<ec:column property="REMARK" title="备注" width="10%" />
				<ec:column property="_00" title="操作" width="10%">
					<a href="${pageContext.request.contextPath}/admin/right/role_modifyUI.html?role.roleId=${role1.ROLE_ID}" name="modifyUI">修改</a>
					&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/admin/right/role_authUI.html?role.roleId=${role1.ROLE_ID}" name="authUI" >授权</a>
					&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/admin/right/role_modify.html?role.roleId=${role1.ROLE_ID}&role.isLogout=1" name="del" 
					onclick="javascript:if(confirm('您确定要删除此角色吗？') == false) return false">删除</a>
				</ec:column>
			</ec:row>
		</ec:table>
	</div>
	<jsp:include page="../bottom.jsp"></jsp:include> 
	
</body>
</html>

