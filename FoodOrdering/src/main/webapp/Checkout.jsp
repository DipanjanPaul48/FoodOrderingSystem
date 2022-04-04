<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Checkout</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="CSS/cart.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
<style>
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }

    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }

    .deco{
    text-align: center;
    font-family: Comic Sans MS;
	}
  </style>
</head>

<body>
<script src='https://cdn.rawgit.com/Siddharth11/gradStop.js/master/gradstop.js'></script>
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
      </ul>
    </div>
  </div>
</nav>
	<div class="container">
	<p> <h3 class="deco">Great! Your order with orderId <%= session.getAttribute("order_id_key") %> has been confirmed. <br>
		It will reach you within 45 mins! <br>
		Keep Rs. <%= session.getAttribute("total_bill") %> ready. <br>
		Thank you for ordering with us! <br></h3>
	</div>
	<div class = "container">
	</div>

</body>
<footer class="container-fluid text-center">
         <p>Developed By Dipanjan Paul</p>
</footer>
</html>




