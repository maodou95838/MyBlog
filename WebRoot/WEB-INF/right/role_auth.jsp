<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.ecside.org" prefix="ec"%>
<jsp:include page="../top.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>角色授权</title>
</head>
<body>
<form  method="post" action="${pageContext.request.contextPath }/admin/right/role_authUI.html">
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
										<td width="538">过滤：按模块名称：
										<s:select list="#request.filterMap" name="resource.parentId" headerKey=""
										headerValue="--请选择--"/>
										<input type="hidden" name="role.roleId" value="${role.roleId }"/>
										 <span class="newfont06"> 
										 <input name="Submit4" type="submit" class="right-button02"	value="过  滤" />
										 </td>
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
	<br />
		<div align="center">
			<ec:table items="resourceList" var="res1" retrieveRowsCallback="limit"
				action="${pageContext.request.contextPath }/admin/right/role_authUI.html" 
				rowsDisplayed='12' pageSizeList="2,5,12,20,50,100"
				resizeColWidth="true" width="99%" listWidth="100%" height="600px"
				sortable="false" useAjax="false" style="align:center"
				autoIncludeParameters="true">
				<ec:row>
					<ec:column property="PARENT_TITLE" title="父资源名称" width="10%" />
					<ec:column property="RESOURCE_TITLE" title="资源名称" width="10%" />
					<ec:column property="RESOURCE_DESC" title="资源描述" width="10%" />
					<ec:column property="RESOURCE_URL" title="url" width="10%" />
					<ec:column property="RESOURCE_TYPE" title="类型" width="10%" mappingItem="resourceTypeMap"/>
					<ec:column property="_00" title="选择" width="10%">
						<input type="checkbox" name="role.resourceIds" id="${res1.RESOURCE_ID}" value="${res1.RESOURCE_ID}"/>
					</ec:column>
				</ec:row>
			</ec:table>
		</div>
		<br/>
		<input type="button" value="授权" class="right-button08" onclick="javascript:submitAuth();"/>
		<input type="button" value="返回" class="right-button08" onclick="javascript:window.location='${pageContext.request.contextPath}/admin/right/role_showHome.html';"/>
		<input type="hidden" name="role.roleId" value="${role.roleId }"/>
		
	<script type="text/javascript">
   		var ids = ${authedResList};
 		for (var i=0; i<ids.length; i++) {
  			jQuery("#" + ids[i]).attr("checked", true);
  		}
 		
 		function submitAuth() {
 			var authBox = document.getElementsByName("role.resourceIds");
 			var boxValues = "";
 			
 			for (var i=0; i<authBox.length; i++) {
 				if (authBox[i].checked == true) {
	 				boxValues += authBox[i].value + ",";
 				}
 			}
 			
 			boxValues = boxValues.substring(0, boxValues.length - 1);                                                                 
 			window.location = "${pageContext.request.contextPath }/admin/right/role_auth.html?role.roleId=" +${role.roleId } + "&resourceIds=" + boxValues;
 		}
  	</script>
</body>
</html>

