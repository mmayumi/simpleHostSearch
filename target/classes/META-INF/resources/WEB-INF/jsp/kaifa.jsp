<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>搜索页面</title>
</head>
<body>
	<div>
	    按关键字搜索：<input id="word" value="${word}"> &nbsp;
		<button type="button" onclick="search()">搜索</button>
	</div>
	<table>
    <tr>
        <th>新闻内容</th>
        <th>发布时间</th>
    </tr>
    <c:forEach var="c" items="${list}">
    	<tr>
    		<td><a href="${c.infoUrl}" target="_blank">${c.infoText}</a></td>
    		<td>${c.time}</td>
    	<tr>
    </c:forEach>
    </table>
</body>
<script>
	function search(){
		var word = document.getElementById("word").value;
		location.href='${ctx}/page/search?word='+word;
	}
</script>
</html>