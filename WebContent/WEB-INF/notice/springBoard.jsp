<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src='/grace/dwr/engine.js'></script>
<script type="text/javascript" src='/grace/dwr/util.js'></script>
<script type='text/javascript' src='/grace/dwr/interface/SendMgr.js'></script>
<script type='text/javascript'>
function getList(){
	BoardMgr.getAllBoardLists(function(results){
		if(results){
			for(var i=0; i<results.length; i++){
				alert(i+"번쨰 : "+results[i].BOARD_TYPE_SEQ);
				alert(i+"번쨰 : "+results[i].BOARD_SEQ);
				alert(i+"번쨰 : "+results[i].CREATE_BY);
				alert(i+"번쨰 : "+results[i].CREATE_DATE);
				alert(i+"번쨰 : "+results[i].UPDATE_DATE);
				alert(i+"번쨰 : "+results[i].DISABLE);
				alert(i+"번쨰 : "+results[i].CONTENT);
				
			}
		}
	});
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	${message}  /  ${count}
</div>
<div>
	<a href="..${button}"><button type="button">이동</button></a>
	<a href="../index.jsp"><button type="button">Go To Index</button></a>
	<a href="javascript:getList();"><button type="button">Ajax Test</button></a>
</div>
<c:forEach var="result" items="${results}">
	<div>
		<p>${result.BOARD_TYPE_SEQ}</p>
		<p>${result.BOARD_SEQ}</p>
		<p>${result.CREATE_BY}</p>
		<p>${result.CREATE_DATE}</p>
		<p>${result.UPDATE_DATE}</p>
		<p>${result.DISABLE}</p>
		<p>${result.CONTENT}</p>
	</div>
</c:forEach>

<c:forEach var="list" items="${results}">
	<div>
		<p>${result.BOARD_TYPE_SEQ}</p>
		<p>${result.BOARD_SEQ}</p>
		<p>${result.CREATE_BY}</p>
		<p>${result.CREATE_DATE}</p>
		<p>${result.UPDATE_DATE}</p>
		<p>${result.DISABLE}</p>
		<p>${result.CONTENT}</p>
	</div>
</c:forEach>

<div>
	<p id="vBoardTypeSeq"></p>
	<p id="vBoardSeq"></p>
	<p id="vCreateBy"></p>
	<p id="vCreateDate"></p>
	<p id="vUpdateDate"></p>
	<p id="vDisable"></p>
	<p id="vContent"></p>
</div>
</body>
</html>