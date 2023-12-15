<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.example.RecipeController ,java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Recipe Sharing Platform</title>
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
                <li><a href="Home.html">Home</a></li>
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
    <div class = "my_recipe_top">
        <img src="../img/list.png" width="50" height="50" style="float: left; margin-right: 10px;">
        <h2 style="float: left; margin-top: 10px;">      My Recipe list</h2>
        <button style="float: right;">
            <a href="add">
                Add
            </a>
        </button>
    </div>
    <div class="row">
        <c:forEach items="${recipes}" var="recipe">
            <div class="col-sm-4">
                <a href="view/${recipe.seq}">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            ${recipe.category} / ${recipe.recipe_name}
                            <c:forEach begin="1" end="${recipe.recipe_level}" var="star">
                                <span class="stars">&#9733;</span>
                            </c:forEach>
                        </div>
                        <div class="panel-body"><img src="${pageContext.request.contextPath}/img/${recipe.image}" alt="Recipe Image"></div>
                        <div class="panel-footer">작성일자: ${recipe.regdate}</div>
                    </div>
                </a>
            </div>
        </c:forEach>
    </div>
</div>
<footer class="container-fluid text-center">
    <p>&copy; 2023 Recipe Sharing Platform</p>
    <form class="form-inline">Get updates:
        <input type="email" class="form-control" size="50" placeholder="Email Address">
        <button type="button" class="btn btn-danger">Subscribe</button>
    </form>
</footer>

</body>
</html>
