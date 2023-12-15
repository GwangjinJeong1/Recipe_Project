<%--
  Created by IntelliJ IDEA.
  User: jeong-gwangjin
  Date: 12/1/23
  Time: 11:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>레시피 수정 페이지</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/my.css">
</head>
<body>
<div class="jumbotron">
    <div class="container text-center">
        <h1>Cooking Recipe</h1>
        <p>Share and Discover Delicious Recipes</p>
    </div>
</div>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../img/LOGO.png"><img src="../img/LOGO.png" class="logo" alt="Logo"></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li><a href="home.jsp">Home</a></li>
                <li><a href="#">Recipes</a></li>
                <li><a href="#">Categories</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="./index.html"><span class="glyphicon glyphicon-user"></span> My Recipes</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <h2>Edit Recipe</h2>
    <form:form modelAttribute="recipeVO" method="POST" action="../editok">
        <form:hidden path="seq"/>
        <div class="form-group">
            <label for="recipeName">Recipe Name:</label>
            <form:input type="text" class="form-control" id="recipeName" path="recipe_name" placeholder="Enter recipe name"/>
        </div>
        <div class="form-group">
            <label for="writer">Writer:</label>
            <form:input type="text" class="form-control" id="writer" path="writer" placeholder="Enter writer"/>
        </div>
        <div class="form-group">
            <label for="category">Recipe Category:</label>
            <form:input type="text" class="form-control" id="category" path="category" placeholder="Enter recipe category"/>
        </div>
        <div class="form-group">
            <label for="recipeLevel">Recipe Level:</label>
            <form:select id="recipeLevel" path="recipe_level" itemValue="${recipeVO.recipe_level}">
                <option value="1">Level 1</option>
                <option value="2">Level 2</option>
                <option value="3">Level 3</option>
                <option value="4">Level 4</option>
                <option value="5">Level 5</option>
            </form:select>
        </div>
        <div class="form-group">
            <label for="recipeImage">Recipe Image:</label>
            <form:input type="file" class="real-upload" id="recipeImage" path="image" accept="image/*"/>
            <div>
                <c:if test="${recipeVO.image ne ''}">
                    <img src="${recipeVO.image}" class="photo" width="100" height="100"/>
                </c:if>
            </div>
        </div>
        <div class="form-group">
            <label for="recipeIngredients">Ingredients:</label>
            <form:textarea class="form-control" id="recipeIngredients" path="ingredient" placeholder="Enter ingredients" rows="4"></form:textarea>
        </div>
        <div class="form-group">
            <label for="recipeContent">How to:</label>
            <form:textarea class="form-control" id="recipeContent" path="recipe_content" placeholder="Enter instructions" rows="4"></form:textarea>
        </div>
        <button type="submit" class="btn btn-primary">Edit</button>
        <button type="button" class="btn btn-primary" onclick="history.back()">Cancel</button>
    </form:form>
</div>

<%--<h1>게시글 수정</h1>--%>
<%--<form:form modelAttribute="boardVO" method="POST" action="../editok">--%>
<%--    <form:hidden path="seq"/>--%>
<%--    <table id="edit">--%>
<%--        <tr><td>Category: </td><td><form:input path="category"/></td></tr>--%>
<%--        <tr><td>Title: </td><td><form:input path="title"/></td></tr>--%>
<%--        <tr><td>Writer: </td><td><form:input path="writer"/></td></tr>--%>
<%--        <tr><td>Contents: </td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>--%>
<%--    </table>--%>
<%--    <button type="button" onclick="history.back()">Cancel</button><button type="submit">Edit</button>--%>
<%--</form:form>--%>
</body>
</html>
