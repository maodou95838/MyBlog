<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<jsp:include page="../top.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>组织机构添加</title>
</head>

<body class="ContentBody">
	<form action="${pageContext.request.contextPath}/admin/org/org_add.html"
		method="post" name="form1" id="form1">
		<div class="MainDiv">
			<table width="99%" border="0" cellpadding="0" cellspacing="0"
				class="CContent">
				<tr>
					<th class="tablestyle_title">机构添加页面</th>
				</tr>
				<tr>
					<td class="CPanel">

						<table border="0" cellpadding="0" cellspacing="0"
							style="width:100%">


							<TR>
								<TD width="100%">
									<fieldset style="height:100%;">
										<legend>添加机构</legend>
										<table border="0" cellpadding="2" cellspacing="1"
											style="width:100%">
											<TR>
												<td align="right" width="19%">机构名称:</td>
												<td width="27%"><input name="org.name" id="Input22"
													class="text required" style="width:154px" maxlength="20" /></td>
											</tr>
											<tr>
												<td nowrap align="right">机构描述:</td>
												<td><input name="org.desc1" id="Input" class="text"
													style="width:154px" maxlength="60" /></td>
											</tr>
											<tr>
												<td nowrap align="right">父机构:</td>
												<td><s:select name="org.parentUuid"
														cssStyle="width:154px" list="#request.fatherOrg"
														listKey="uuid" listValue="name" headerKey="-1"
														headerValue="--请选择--" /></td>
											</tr>
											<tr>
												<td nowrap align="right">是否可添加子机构:</td>
												<td><s:select name="org.isTerminal" list="#request.terminalMap" cssStyle="width:154px"/>
												</td>
											</tr>
										</table>
										<br />
									</fieldset>
								</TD>
							</TR>

						</TABLE>


					</td>
				</tr>
				<TR>
					<TD colspan="2" align="center" height="50px"><input
						type="submit" name="submit" value="保 存" class="button" /> <input
						type="button" name="Submit2" value="返 回" class="button"
						onclick="window.history.go(-1);" /></TD>
				</TR>
			</TABLE>

			</td>
			</tr>
			</table>

		</div>
	</form>
</body>
</html>
