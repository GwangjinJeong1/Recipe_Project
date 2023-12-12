<%--
  Created by IntelliJ IDEA.
  User: jeong-gwangjin
  Date: 12/1/23
  Time: 3:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>자유게시판</h1>
<table id="posts">
    <tr>
        <th>Id</th>
        <th>Category</th>
        <th>Title</th>
        <th>Writer</th>
        <th>Content</th>
        <th>Regdate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

    <c:forEach items="${posts}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.category}</td>
            <td><a href="view/${u.seq}">${u.title}</a></td>
            <td>${u.writer}</td>
            <td>${u.content}</td>
            <td>${u.regdate}</td>
            <td><a href="editform/${u.seq}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><a href="add">Add New Post</a>
</body>
<script>
    function delete_ok(id){
        var a = confirm("정말로 삭제하겠습니까?");
        if(a) location.href="deleteok/" + id;
    }
</script>
</html>

