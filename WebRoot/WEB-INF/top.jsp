<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">	
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/css.css"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
    <link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/ecside/css/ecside_style.css' />
	<script type="text/javascript" src='${pageContext.request.contextPath}/ecside/js/prototype_mini.js'></script>
	<script type="text/javascript" src='${pageContext.request.contextPath}/ecside/js/ecside_msg_utf8_cn.js'></script>
	<script type="text/javascript" src='${pageContext.request.contextPath}/ecside/js/ecside.js'></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js" ></script>
    <script src="${pageContext.request.contextPath}/js/validation/prototype.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/validation/effects.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/validation/validation_cn.js" type="text/javascript"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/myUtils.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		$.noConflict();
		
		window.onload = function(){   
			//  form1 为 表单的名称   
			if(document.getElementById('form1')!=null){
	    	   new Validation('form1', {stopOnFirst:true, immediate:true}); 
			}
		}

	</script>
<!-- 加上此段样式，它的显示格式有改变  -->
<STYLE type=text/css>
BODY TD {
	FONT-SIZE: 9pt; COLOR: #333; FONT-FAMILY: Arial, Helvetica, sans-serif
}
.validation-advice {
	PADDING-RIGHT: 0px; DISPLAY: inline; PADDING-LEFT: 0px; FONT-WEIGHT: bold; PADDING-BOTTOM: 0px; MARGIN: 0px 0px 0px 10px; COLOR: #ff3300; PADDING-TOP: 0px
}
</STYLE>
</head>
</html>