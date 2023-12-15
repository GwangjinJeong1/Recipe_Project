<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <title>레시피 추가 페이지</title>
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
  <h2>Add Recipe</h2>
  <form name="form1" method="post" action="addok">
    <div class="form-group">
      <label for="recipeName">Recipe Name:</label>
      <input type="text" class="form-control" id="recipeName" name="recipe_name" placeholder="Enter recipe name">
    </div>
    <div class="form-group">
      <label for="writer">Writer:</label>
      <input type="text" class="form-control" id="writer" name="writer" placeholder="Enter writer">
    </div>
    <div class="form-group">
      <label for="category">Recipe Category:</label>
      <input type="text" class="form-control" id="category" name="category" placeholder="Enter recipe category">
    </div>
    <div class="form-group">
      <label for="recipeLevel">Difficulty:</label>
      <select id="recipeLevel" name="recipe_level">
        <option value="1">Level 1</option>
        <option value="2">Level 2</option>
        <option value="3">Level 3</option>
        <option value="4">Level 4</option>
        <option value="5">Level 5</option>
      </select>
    </div>
    <div class="form-group">
      <label for="recipeImage">Recipe Image URL:</label>
      <input type="file" class="real-upload" id="recipeImage" name="image" accept="image/**" multiple>
    </div>
    <div class="form-group">
      <label for="recipeIngredients">Ingredients:</label>
      <textarea class="form-control" id="recipeIngredients" name="ingredient" placeholder="Enter ingredients" rows="4"></textarea>
    </div>
    <div class="form-group">
      <label for="recipeContent">How to:</label>
      <textarea class="form-control" id="recipeContent" name="recipe_content" placeholder="Enter instructions" rows="4"></textarea>
    </div>
    <button type="submit" class="btn btn-primary">Add</button>
    <button type="button" class="btn btn-primary" onclick="location.href='posts'">Back</button>
  </form>
</div>
</body>
</html>