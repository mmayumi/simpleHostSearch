<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>热搜排行榜页面</title>
</head>
<body>
	<table>
    <tr>
        <th>排名</th>
        <th>关键字</th>
        <th>搜索次数</th>
    </tr>
    <c:forEach var="c" items="${list}">
    	<tr>
    		<td>${c.rank}</td>
    		<td>${c.word}</td>
    		<td>${c.num}</td>
    	<tr>
    </c:forEach>
    </table>
</body>
</html>