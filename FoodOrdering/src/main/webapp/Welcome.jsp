<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "javax.servlet.http.*, javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="CSS/button.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">

<style>
  .head-text {
    color: rgb(157, 50, 168);
    font-family: Lobster;
    font-size: 200px;
  }
  .subhead-text{
    color: rgb(157, 50, 168);
    font-family: Lobster;
    font-size: 70px;}
</style>
<style>
    .navbar {
      margin-bottom: 0px;
      border-radius: 0;
    }

     .jumbotron {
      background-image : url(CSS/download.jfif);
      height: 100%;
      margin-bottom: 0;
    }

    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    </style>

</head>

<body>
<div class="background">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>

    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
      	<li><a href="logout.jsp"><h4><span class="glyphicon glyphicon-user"></span> Log Out</h4></a></li>
        <li><a href="cart.jsp"><h4><span class="glyphicon glyphicon-shopping-cart"></span> Cart</h4></a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="jumbotron">
  <div class="container text-center">
    <div class="head-text">Welcome  </div>
    <div class="subhead-text">To Fomato</div>
  </div>
</div>


<p id="demo">

<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Chicken Biryani</div>
        <div class="panel-body"><img src="CSS/chickenBiryani.jpg" class="img-responsive" style="height:195px; width:100%" alt="Chicken Biryani"></div>
        <div class="panel-footer">Rs. 200</div>
       <a href="addToCart.jsp?p=1"><button class="button" style="vertical-align:middle" id="1" ><span>Add to cart </span></button></a>
      </div>
    </div>

    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Cheese Pasta</div>
        <div class="panel-body"><img src="CSS/cheesePizza.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 180</div>
        <a href="addToCart.jsp?p=2"><button class="button" style="vertical-align:middle" id="2" ><span>Add to cart </span></button></a>
      </div>
    </div>

    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Paneer Tikka</div>
        <div class="panel-body"><img src="CSS/paneerTikka.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 200</div>
        <a href="addToCart.jsp?p=3"><button class="button" style="vertical-align:middle" id="3"><span>Add to cart </span></button></a>
      </div>
    </div>
  </div>
</div><br>

<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Chole Bhature</div>
        <div class="panel-body"><img src="CSS/choleBhature.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 180</div>
        <a href="addToCart.jsp?p=4"><button class="button" style="vertical-align:middle" id="4"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>

     <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Burger</div>
        <div class="panel-body"><img src="CSS/Burger.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 250</div>
        <a href="addToCart.jsp?p=5"><button class="button" style="vertical-align:middle" id="5"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>

     <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Pizza</div>
        <div class="panel-body"><img src="CSS/Pizza.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 230</div>
        <a href="addToCart.jsp?p=6"><button class="button" style="vertical-align:middle" id="6"><span>Add to cart </span></button></a>
      </div>
    </div>

    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Hot Dog</div>
        <div class="panel-body"><img src="CSS/HotDog.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 180</div>
        <a href="addToCart.jsp?p=7"><button class="button" style="vertical-align:middle" id="7"><span>Add to cart </span></button></a>
      </div>
    </div>

    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Rasgulla</div>
        <div class="panel-body"><img src="CSS/rasgulla.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 150</div>
        <a href="addToCart.jsp?p=8"><button class="button" style="vertical-align:middle" id="8"><span>Add to cart </span></button></a>
      </div>
    </div>

      <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Jalebi</div>
        <div class="panel-body"><img src="CSS/jalebi.jfif" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 50</div>
        <a href="addToCart.jsp?p=9"><button class="button" style="vertical-align:middle" id="9"><span>Add to cart </span></button></a>
      </div>
</div>
<br><br>
</body>
<hr>
<footer class="container-fluid text-center">
         <p>Developed By Dipanjan Paul</p>
</footer>
</html>