<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type='text/javascript'>
//var $j = jQuery.noConflict();
</script>
<script type="text/javascript" src='/grace/dwr/engine.js'></script>
<script type="text/javascript" src='/grace/dwr/util.js'></script>
<script type='text/javascript' src='/grace/dwr/interface/SendMgr.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/include/js/test.js'></script>
<link href='${pageContext.request.contextPath}/include/css/progression.css' rel='stylesheet' type='text/css'>
<link href='${pageContext.request.contextPath}/include/css/style.css' rel='stylesheet' type='text/css'>
<title>Insert title here</title>
</head>
<body>
	<form id="myform" style="position: relative;">
		<p>
			<label for="">보내는 사람</label>
			<input type="text" name="name" value="" placeholder="">
		</p>

		<p>
			<label for="">받는 사람</label>
			<textarea name=""></textarea>
		</p>

		<p class="left">
			<label for="">기타_1</label>
			<input type="text" name="mytel" value="" placeholder="">
		</p>

		<p class="right">
			<label for="">기타_2</label>
			<input type="text" name="mytel" value="" placeholder="">
		</p>
			
		<p>
			<label for="">내용</label>
			<textarea name=""></textarea>
		</p>

		<p>
			<input type="submit" class="button" name="" value="전송" placeholder="">
		</p>
	</form>
</body>
</html>