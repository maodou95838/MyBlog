<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<jsp:include page="../top.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>角色机构添加</title>
</head>

<body class="ContentBody">
	<form action="${pageContext.request.contextPath}/admin/right/role_modify.html"
		method="post" name="form1" id="form1">
		<div class="MainDiv">
			<table width="99%" border="0" cellpadding="0" cellspacing="0"
				class="CContent">
				<tr>
					<th class="tablestyle_title">角色添加页面</th>
				</tr>
				<tr>
					<td class="CPanel">

						<table border="0" cellpadding="0" cellspacing="0"
							style="width:100%">


							<TR>
								<TD width="100%">
									<fieldset style="height:100%;">
										<legend>角色修改</legend>
										<table border="0" cellpadding="2" cellspacing="1"
											style="width:100%">
											<TR>
												<td align="right" width="19%">角色名称:</td>
												<td width="27%"><input name="role.roleName" id="Input22"
													class="text required" style="width:154px" maxlength="20" value="${role.roleName}"/>
													<input name="role.roleId" type="hidden"	value="${role.roleId}"/>
													</td>
											</tr>
											<tr>
												<td nowrap align="right">权</td>
												<td><input name="role.roleQutoa" id="Input" class="text required"
													style="width:154px" maxlength="60" value="${role.roleQutoa}"/></td>
											</tr>
											<tr>
												<td nowrap align="right">备注:</td>
												<td><input name="role.remark" id="Input" class="text"
													style="width:154px" maxlength="40" value="${role.remark}"/>
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
