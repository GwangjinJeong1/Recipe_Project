<%--
  Created by IntelliJ IDEA.
  User: jeong-gwangjin
  Date: 12/1/23
  Time: 11:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.example.RecipeVO"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시글 정보</title>
</head>
<body>
<h1>게시글 정보</h1>
<form:form modelAttribute="boardVO" method="POST" action="../editok">
    <form:hidden path="seq"/>
    <table id="view">
        <tr><td>Category: </td><td>${boardVO.category}</td></tr>
        <tr><td>Title: </td><td>${boardVO.title}</td></tr>
        <tr><td>Writer: </td><td>${boardVO.writer}</td></tr>
        <tr><td>Contents: </td><td>${boardVO.content}</td></tr>
    </table>
    <button type="button" onclick="history.back()">OK</button>
</form:form>
</body>
</html>
