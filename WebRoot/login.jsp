<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
}
-->
</style>
<link href="${pageContext.request.contextPath }/css/css.css"
	rel="stylesheet" type="text/css" />
</head>

<body>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td height="147"></td>
		</tr>
	</table>
	<table width="562" border="0" align="center" cellpadding="0"
		cellspacing="0" class="right-table03">
		<tr>
			<td width="221"><table width="95%" border="0" cellpadding="0"
					cellspacing="0" class="login-text01">

					<tr>
						<td><table width="100%" border="0" cellpadding="0"
								cellspacing="0" class="login-text01">
								<tr>
									<td align="center"></td>
								</tr>
								<tr>
									<td height="40" align="center">&nbsp;</td>
								</tr>

							</table></td>
						<td><img
							src="${pageContext.request.contextPath }/images/line01.gif"
							width="5" height="292" /></td>
					</tr>
				</table></td>
			<td>
			<form action="${pageContext.request.contextPath }/login.html" method="post">
			<table width="100%" border="0" cellspacing="0"
					cellpadding="0">
					<tr>
						<td width="31%" height="35" class="login-text02">用户名称：<br /></td>
						<td width="69%"><input name="user.userLoginId" type="text" size="30" /></td>
					</tr>
					<tr>
						<td height="35" class="login-text02">密 码：<br /></td>
						<td><input name="user.password1" type="password" size="30" /></td>
					</tr>
					<tr>
						<td height="30" class="login-text02">验证图片：<br /></td>
						<td><img
							src="${pageContext.request.contextPath }/admin/imageServlet"
							width="109" height="35" /> <a href="javascript:refresh(this)"
							class="login-text03">看不清楚，换张图片</a></td>
					</tr>
					<tr>
						<td height="35" class="login-text02">请输入验证码：</td>
						<td><input name="validateCode" type="text" size="30"
							style="width:45%" /></td>
					</tr>
					<tr>
						<td height="35">&nbsp;</td>
						<td><input name="Submit2" type="submit"
							class="right-button01" value="登 录" /> <input name="Submit232"
							type="submit" class="right-button01" value="重 置" /></td>
					</tr>
				</table>
			</form>	
				</td>
		</tr>
	</table>
</body>
</html>