<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>西安国际学校教务系统</title>

<script
	src="${pageContext.request.contextPath}/js/validation/prototype.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/js/validation/effects.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/js/validation/validation_cn.js"
	type="text/javascript"></script>
<link href="${pageContext.request.contextPath }/css/css.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript">
	window.onload = function() {
		var validator = new Validation('form1', {
			stopOnFirst : false,
			immediate : true
		});
	}
</script>

<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000
}
-->
</style>

<!-- 加上此段样式，它的显示格式有改变  -->
<STYLE type=text/css>
BODY TD {
	FONT-SIZE: 10pt;
	COLOR: #333;
	FONT-FAMILY: Arial, Helvetica, sans-serif
}

.validation-advice {
	PADDING-RIGHT: 0px;
	DISPLAY: inline;
	PADDING-LEFT: 0px;
	FONT-WEIGHT: bold;
	PADDING-BOTTOM: 0px;
	MARGIN: 0px 0px 0px 10px;
	COLOR: #ff3300;
	PADDING-TOP: 0px
}
</STYLE>
<style type="text/css">
.title {
	font-family: "宋体";
	height: 20px;
	width: 400px;
	font-size: 10.5pt;
	line-height: 20px;
	color: #0099FF;
	text-align: center;
}

.label {
	font-family: "宋体";
	font-size: 9pt;
	line-height: 20px;
	color: #3366cc;
}

.text {
	font-family: "宋体";
	font-size: 9pt;
	line-height: 20px;
	color: #4b4b4b;
}

.content {
	height: 20px;
	width: 100%;
	background-color: #f5f4f3;
	padding: 2px;
}
</style>

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
				<form id="form1" name="form1"
					action="${pageContext.request.contextPath }/login.html"
					method="post">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="31%" height="35" class="login-text02">用户名称：<br /></td>
							<td width="69%"><input name="user.userLoginId" type="text"
								size="28" class="required" maxlength="12" /></td>
						</tr>
						<tr>
							<td height="35" class="login-text02">密 码：<br /></td>
							<td><input name="user.password1" type="password" size="28"
								class="required" maxlength="12" /></td>
						</tr>
						<tr>
							<td height="30" class="login-text02">验证图片：<br /></td>
							<td><img
								src="${pageContext.request.contextPath }/admin/imageServlet"
								width="109" height="35" onclick="javascript:history.go(0)" /> </td>
						</tr>
						<tr>
							<td height="35" class="login-text02">请输入验证码：</td>
							<td><input type="hidden" value="${validateCode }" id="vCode" />
							<input name="validateCode" type="text" size="30"
								maxlength="4" style="width:45%" class="required validate-equals-vCode" onblur=""/></td>
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