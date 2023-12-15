<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.example.RecipeController ,java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Recipe Detail</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../../css/my.css">

    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href= "deleteok/"+id;
        }
    </script>
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
            <a class="navbar-brand" href="../../img/LOGO.png"><img src="../../img/LOGO.png" class="logo" alt="Logo"></a>
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
    <div class="recipe-details">
        <button class="delete_button"><a href="javascript:delete_ok('${recipeVO.seq}')">Delete</a></button>
        <button class="edit_button" ><a href="../editform/${recipeVO.seq}">Edit</a></button>
        <button class="back_button" onclick="history.back()">Back</button>
        <h2>
            ${recipeVO.category} / ${recipeVO.recipe_name}
            <c:forEach begin="1" end="${recipeVO.recipe_level}" var="star">
                <span class="stars">&#9733;</span>
            </c:forEach>
        </h2>
        <p>image: ${recipeVO.image}</p>
        <p>Ingredients:</p>
        <ul>
            <li>${recipeVO.ingredient}</li>
        </ul>
        <p>Instructions:</p>
        <ol>
            <li>${recipeVO.recipe_content}</li>
        </ol>
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
