<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type='text/javascript'>
var $j = jQuery.noConflict();

</script>
<script type="text/javascript" src='/grace/dwr/engine.js'></script>
<script type="text/javascript" src='/grace/dwr/util.js'></script>
<script type='text/javascript' src='/grace/dwr/interface/SendMgr.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/include/js/sendMessage.js?20140711'></script>
<link href='${pageContext.request.contextPath}/include/css/progression.css' rel='stylesheet' type='text/css'>
<link href='${pageContext.request.contextPath}/include/css/style.css' rel='stylesheet' type='text/css'>
<title>Insert title here</title>
</head>
<body>
	<form id="myform" style="position: relative;">
		<p class="msgSize">
			<label id="mtType" class="sms">SMS</label>
			<label id="mtLimit" class="sms">80 BYTE</label>
			<input type="text" name="COUNTBYTE" id="COUNTBYTE" value="0" readonly="readonly" />
		</p>
			
		<p>
			<label for="">보내는 사람</label>
			<input type="text" name="p_REQPHONE" value="" placeholder="">
		</p>

		<p>
			<label for="">받는 사람</label>
			<textarea name="p_CALLPHONES" class="p_CALLPHONES"></textarea>
		</p>
		
		<p>
			<label id="l_SUBJECT" for="">제목</label>
			<input type="text" name="p_SUBJECT" id="p_SUBJECT" disabled="disabled" value="" placeholder="">
		</p>
		
		<p>
			<label for="">구분</label>
			<input type="text" name="p_KIND" value="" placeholder="">
		</p>
		
	<!-- 
		<p class="left">
			<label for="">제목</label>
			<input type="text" name="p_SUBJECT" value="" placeholder="">
		</p>

		<p class="right">
			<label for="">기타_2</label>
			<input type="text" name="mytel" value="" placeholder="">
		</p> 
	-->
			
		<p>
			<label for="">내용</label>
			<textarea name="p_MSG" id="p_MSG" class="p_MSG"></textarea>
		</p>

		<p>
			<input type="submit" class="button" name="" value="전송" placeholder="">
		</p>
	</form>
</body>
</html>