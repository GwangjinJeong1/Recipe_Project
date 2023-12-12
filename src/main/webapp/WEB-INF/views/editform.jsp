<%--
  Created by IntelliJ IDEA.
  User: jeong-gwangjin
  Date: 12/1/23
  Time: 11:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.example.RecipeVO"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시글 수정</title>
</head>
<body>
<h1>게시글 수정</h1>
<form:form modelAttribute="boardVO" method="POST" action="../editok">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr><td>Category: </td><td><form:input path="category"/></td></tr>
        <tr><td>Title: </td><td><form:input path="title"/></td></tr>
        <tr><td>Writer: </td><td><form:input path="writer"/></td></tr>
        <tr><td>Contents: </td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
    </table>
    <button type="button" onclick="history.back()">Cancel</button><button type="submit">Edit</button>
</form:form>
</body>
</html>
