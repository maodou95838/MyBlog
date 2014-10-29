<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>西安国际学校教务系统</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(${pageContext.request.contextPath}/images/left.gif);
}
-->
</style>
<link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT type="text/javascript">
	function tupian(idt) {
		var nametu = "xiaotu" + idt;
		var tp = document.getElementById(nametu);
		var imgs = document.getElementsByName("xiaotuName");
		
		for (var i = 0; i < imgs.length; i++) {
			imgs[i].src = "${pageContext.request.contextPath}/images/ico06.gif";
		}
		tp.src = "${pageContext.request.contextPath}/images/ico05.gif";
	}
	
	//展开子菜单，切换展开图片
	function list(idstr) {
		var myId = "subtree" + idstr; //subtree 
		var objectobj = document.getElementById(myId);
		
		var myImg = "img" + idstr;
		var imgobj = document.getElementById(myImg);
		
		if (objectobj.style.display == "none") {
			objectobj.style.display = "";
			imgobj.src = "${pageContext.request.contextPath}/images/ico03.gif";
		} else {
			objectobj.style.display = "none";
			imgobj.src = "${pageContext.request.contextPath}/images/ico04.gif";
		}
	}
</SCRIPT>

<body>
	<table width="198" border="0" cellpadding="0" cellspacing="0"
		class="left-table01">
		<tr>
			<TD>
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="207" height="55" background="${pageContext.request.contextPath}/images/nav01.gif">
							<table width="90%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="25%" rowspan="2"><img src="${pageContext.request.contextPath}/images/ico02.gif"
										width="35" height="35" /></td>
									<td width="75%" height="22" class="left-font01">您好，<span
										class="left-font02">${loggedUser.userLoginId}</span></td>
								</tr>
								<tr>
									<td height="22" class="left-font01">[&nbsp;<a
										href="../login.html" target="_top" class="left-font01">退出</a>&nbsp;]
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table> 
		<s:iterator value="#session.loggedUser.funcTreeMap" id="root" status="status">
		<!--主菜单-->
		 <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
		          <tr>
		            <td height="29">
						<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%">
									<img id="img${status.index}" src="${pageContext.request.contextPath}/images/ico04.gif" width="8" height="11" />
								</td>
								<td width="92%">
									<s:if test="!#root.value.isEmpty">
										<a href="javascript:" target="mainFrame" class="left-font03" onclick="list('${status.index}');" >${key.resourceDesc}</a>
									</s:if>
									<s:else>
										<a href="${pageContext.request.contextPath}/${key.resourceUrl}?parentId=${key.resourceId}&tree=1" target="mainFrame" class="left-font03" ">${key.resourceDesc}</a>
									</s:else>
								</td>
							</tr>
						</table>
					</td>
		          </tr>		  
		</TABLE>
		
		<!--子菜单-->
	  <s:if test="!#root.value.isEmpty">
	  	<table id="subtree${status.index}" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<s:iterator value="#root.value" status="status2">
					<tr>
					  <td width="9%" height="20" ><img name="xiaotuName" id="xiaotu${status.index}${status2.index}" src="${pageContext.request.contextPath}/images/ico06.gif" width="8" height="12" /></td>
					  <td width="91%"><a href="${pageContext.request.contextPath}/${resourceUrl}?parentId=${resourceId}tree=1" target="mainFrame" class="left-font03" onclick="tupian('${status.index}${status2.index}');">${resourceDesc}</a></td>
					</tr>
				</s:iterator>
      	</table>
      	</s:if>
      </s:iterator>

</body>
</html>
