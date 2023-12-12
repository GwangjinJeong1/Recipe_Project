<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>게시글 작성</title>
</head>
<body>
<h1>게시글 작성</h1>
<form action="addok" method="post">
  <table id="edit">
    <tr><td>Category:</td><td><input type="text" name="category"/></td></tr>
    <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
    <tr><td>Writer</td><td><input type="text" name="writer"/></td></tr>
    <tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
  </table>
  <button type="button" onclick="location.href='posts'">Back</button><button type="submit">Add</button>
</form>

</body>
</html>