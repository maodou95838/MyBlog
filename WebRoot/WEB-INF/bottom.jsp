<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script type="text/javascript">
	// hide all 
	var allRightBtn$ = jQuery(":button").not(jQuery(":button[onclick^='ECSideUtil']"));
	allRightBtn$.hide();
	var allRightLink$ = jQuery("a");
	allRightLink$.hide();
	
	//show right functions
	<s:iterator value="#session.inPageFuncList" status="status">
 		var type = '${resourceType}';
 		
 		if (type == '2') {
 			jQuery(":button[name='${inPageName}']").show();
 		} else {
 			jQuery("a[name='${inPageName}']").show();
 		}
 		
	</s:iterator>
</script>
