<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>西安国际学校教务系统</title>
</head>

<frameset rows="59,*" cols="*" frameborder="no" border="0"
	framespacing="0">
	<frame src="${pageContext.request.contextPath}/main/top.jsp" name="topFrame" scrolling="no"
		noresize="noresize" id="topFrame" title="topFrame" />
	<frameset cols="213,*" frameborder="no" border="0" framespacing="0">
		<frame src="${pageContext.request.contextPath}/main/left.jsp" name="leftFrame" scrolling="no"
			noresize="noresize" id="leftFrame" title="leftFrame" />
		<frame src="${pageContext.request.contextPath}/main/mainfra.jsp" name="mainFrame" id="mainFrame"
			title="mainFrame" />
	</frameset>
</frameset>
<noframes>
	<body>
	</body>
</noframes>
</html>
