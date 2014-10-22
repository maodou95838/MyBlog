<%@ page language="java" pageEncoding="UTF-8"%>
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
	background-image: url(../images/left.gif);
}
-->
</style>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT type="text/javascript">
	function tupian(idt) {
		var nametu = "xiaotu" + idt;
		var tp = document.getElementById(nametu);
		tp.src = "../images/ico05.gif";//图片ico04为白色的正方形

		for (var i = 1; i < 30; i++) {

			var nametu2 = "xiaotu" + i;
			if (i != idt * 1) {
				var tp2 = document.getElementById('xiaotu' + i);
				if (tp2 != undefined) {
					tp2.src = "../images/ico06.gif";
				}//图片ico06为蓝色的正方形
			}
		}
	}

	function list(idstr) {
		var name1 = "subtree" + idstr; //subtree 
		var name2 = "img" + idstr;
		var objectobj = document.all(name1);
		var imgobj = document.all(name2);

		alert(imgobj);

		if (objectobj.style.display == "none") {
			for (var i = 1; i < 10; i++) {
				var name3 = "img" + i;
				var name = "subtree" + i;
				var o = document.all(name);
				if (o != undefined) {
					o.style.display = "none";
					var image = document.all(name3);
					alert(image);
					image.src = "../images/ico04.gif";
				}
			}
			objectobj.style.display = "";
			imgobj.src = "../images/ico03.gif";
		} else {
			objectobj.style.display = "none";
			imgobj.src = "../images/ico04.gif";
		}
	}
</SCRIPT>

<body>
------'${funcTreeMap}'
	<table width="198" border="0" cellpadding="0" cellspacing="0"
		class="left-table01">
		<tr>
			<TD>
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="207" height="55" background="../images/nav01.gif">
							<table width="90%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="25%" rowspan="2"><img src="../images/ico02.gif"
										width="35" height="35" /></td>
									<td width="75%" height="22" class="left-font01">您好，<span
										class="left-font02">king</span></td>
								</tr>
								<tr>
									<td height="22" class="left-font01">[&nbsp;<a
										href="../login.html" target="_top" class="left-font01">退出</a>&nbsp;]
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table> <!--  组织机构管理开始    -->
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29">
							<table width="85%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="8%"><img name="img7" id="img7"
										src="../images/ico04.gif" width="8" height="11" /></td>
									<td width="92%"><a href="../jigouguanli/listrenwu.html"
										target="mainFrame" class="left-font03" onClick="list('7');">组织机构管理</a></td>
								</tr>
							</table>
						</td>
					</tr>
				</TABLE> <!--  组织机构管理结束    -->
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29"><table width="85%" border="0" align="center"
								cellpadding="0" cellspacing="0">
								<tr>
									<td width="8%" height="12"><img name="img2" id="img2"
										src="../images/ico04.gif" width="8" height="11" /></td>
									<td width="92%"><a href="../permissions/perlist.html"
										target="mainFrame" class="left-font03" onClick="list('2');">权限管理</a></td>
								</tr>
							</table></td>
					</tr>
				</table>
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29"><table width="85%" border="0" align="center"
								cellpadding="0" cellspacing="0">
								<tr>
									<td width="8%" height="12"><img name="img2" id="img2"
										src="../images/ico04.gif" width="8" height="11" /></td>
									<td width="92%"><a href="../staffmanage/userlist.html"
										target="mainFrame" class="left-font03" onClick="list('2');">用户信息管理</a></td>
								</tr>
							</table></td>
					</tr>
				</table> <!--  用户配置管理开始    -->
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29"><table width="85%" border="0" align="center"
								cellpadding="0" cellspacing="0">
								<tr>
									<td width="8%" height="12"><img name="img2" id="img2"
										src="../images/ico04.gif" width="8" height="11" /></td>
									<td width="92%"><a href="../usermanage/userlist.html"
										target="mainFrame" class="left-font03" onClick="list('2');">用户配置管理</a></td>
								</tr>
							</table></td>
					</tr>
				</table> <!--  用户配置管理结束    --> <!--  班级博客    --> <!--  组织机构管理开始    -->
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29">
							<table width="85%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="8%"><img name="img8" id="img8"
										src="../images/ico04.gif" width="8" height="11" /></td>
									<td width="92%"><a href="../blog/index.html"
										target="mainFrame" class="left-font03">班级博客</a></td>
								</tr>
							</table>
						</td>
					</tr>
				</TABLE> <!--  组织机构管理结束    --> <!--  班级博客    --> <!-- 用户数据管理    -->
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29"><table width="85%" border="0" align="center"
								cellpadding="0" cellspacing="0">
								<tr>
									<td width="8%" height="12"><img name="img4" id="img4"
										src="../images/ico04.gif" width="8" height="11" /></td>
									<td width="92%"><a href="../userselect/userlist.html"
										target="mainFrame" class="left-font03" onClick="list('4');">用户数据管理</a></td>
								</tr>
							</table></td>
					</tr>
				</table> <!--  用户数据管理    --> <!-- 系统管理 -->
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29">
							<table width="85%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="8%"><img name="img8" id="img8"
										src="../images/ico04.gif" width="8" height="11" /></td>
									<td width="92%"><a href="javascript:" target="mainFrame"
										class="left-font03" onClick="list('8');">系统管理</a></td>
									<td>
										<table id="subtree8" style="DISPLAY: none" width="80%" border="0"
					align="center" cellpadding="0" cellspacing="0" class="left-table02">
					<tr>
						<td width="9%" height="20"><img id="xiaotu20"
							src="../images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="../systemmanage/classlist.html"
							target="mainFrame" class="left-font03" onClick="tupian('20');">班级信息管理</a></td>
					</tr>
					<tr>
						<td width="9%" height="21"><img id="xiaotu21"
							src="../images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="../systemmanage/stulist.html"
							target="mainFrame" class="left-font03" onClick="tupian('21');">学生信息管理</a></td>
					</tr>
				</table> 
									</td>	
								</tr>
							</table>
						</td>
					</tr>
				</TABLE>
				<table id="subtree8" style="DISPLAY: none" width="80%" border="0"
					align="center" cellpadding="0" cellspacing="0" class="left-table02">
					<tr>
						<td width="9%" height="20"><img id="xiaotu20"
							src="../images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="../systemmanage/classlist.html"
							target="mainFrame" class="left-font03" onClick="tupian('20');">班级信息管理</a></td>
					</tr>
					<tr>
						<td width="9%" height="21"><img id="xiaotu21"
							src="../images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="../systemmanage/stulist.html"
							target="mainFrame" class="left-font03" onClick="tupian('21');">学生信息管理</a></td>
					</tr>
				</table> 
			</TD>
		</tr>

	</table>
</body>
</html>
