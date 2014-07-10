<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type='text/javascript'>
var $j = jQuery.noConflict();
var ctx = '${pageContext.request.contextPath}';
$j(document).ready(function(){
	alert(ctx);
});

</script>
<script type="text/javascript" src='/grace/dwr/engine.js'></script>
<script type="text/javascript" src='/grace/dwr/util.js'></script>
<script type='text/javascript' src='/grace/dwr/interface/SendMgr.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/include/js/test.js'></script>

<title>Insert title here</title>
</head>
<body>
<div>
	<a href="../index.jsp"><button type="button">Go To Index</button></a>
	<a href="javascript:gettest();"><button type="button">Ajax Test</button></a>
</div>
<div id="aa">asdfasdf</div>
</body>
</html>