<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://www.ecside.org" prefix="ec"%>
<jsp:include page="../top.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>组织机构首页</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "宋体";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<script type="text/javascript">
function sousuo(){
	window.open("gaojisousuo.htm","","depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}
function selectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			obj[i].checked = true;
		}
	}
}

function unselectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			if (obj[i].checked==true) obj[i].checked = false;
			else obj[i].checked = true;
		}
	}
}

function link(){
    document.getElementById("fom").action="../jigouguanli/addrenwu.html";
    document.getElementById("fom").submit();
}

</script>
</head>
<body>
<form name="form1" id="form1" method="post" action="${pageContext.request.contextPath }/admin/org/org_find.html">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  
  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="${pageContext.request.contextPath }/images/nav04.gif">
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		    <tr>
			  <td width="21"><img src="${pageContext.request.contextPath }/images/ico07.gif" width="20" height="18" /></td>
			  <td width="538">
			  		查看内容：按机构名称：<input name="org.name" type="text" size="12" />
					<span class="newfont06">
					<input name="Submit4" type="submit" class="right-button02" value="查 询" /></td>
			  <td width="144" align="left"></td>	
		    </tr>
          </table></td>
        </tr>
    </table></td></tr>
  <tr>
    <td></td>
  </tr>
</table>
</form>
		<br/>
		&nbsp;&nbsp;&nbsp;<input type="button" class="right-button08" value="添加机构" onclick="link();"/>
		<br/><br/>
          <div align="center">
		   <ec:table items="orgList" var="org1"
				retrieveRowsCallback="limit"
				action="${pageContext.request.contextPath}/admin/org/org_find.html"
				rowsDisplayed='12' pageSizeList="2,5,12,20,50,100"
				resizeColWidth="true" width="99%" listWidth="100%" height="600px"
				sortable="false" useAjax="false" style="align:center"
				autoIncludeParameters="true">
				<ec:row>
					<ec:column property="NAME" title="机构名称" width="10%" />
					<ec:column property="PARENT_UUID" title="父机构" width="10%" />
					<ec:column property="DESC1" title="机构描述" width="10%" />
					<ec:column property="IS_LOGOUT" title="是否注销" width="10%" />
					<ec:column property="LOGOUT_REASON" title="注销原因" width="10%" />
					<ec:column property="_00" title="操作" width="10%" >
						<a href="${pageContext.request.contextPath}/admin/basic/user_showModifyPage.html?user.userCode=${user1.USER_CODE}">修改</a>
					</ec:column>	
				</ec:row>
			</ec:table>
		</div>
</body>
</html>
