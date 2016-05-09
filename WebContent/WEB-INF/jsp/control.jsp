<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Self Ordering App</title>
<link href='https://fonts.googleapis.com/css?family=Lato:400,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="Css/controlStyle.css">


</head>
<body>

	<nav class="navbar navbar-default">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Self Ordering</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="index.html">Home <span
						class="sr-only">(current)</span></a></li>
				<li><a
					href="http://www.bridgeport.edu/academics/graduate/computer-science-ms/">About</a></li>
				<li><a href="http://www1bpt.bridgeport.edu/~dichter/">Contact</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				
					<li> <a href="#">${userEmail}</a></li>	
					<li> <a href="LogoutServlet">Log Out</a></li>				
			
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>


	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div id="content">
			
					
  					<form action="menu.jsp">		
  								<div>	
  										<label ><h3>Table#</h3></label>
     									<select name="table" >
											<option value="1"> 1 </option>
											<option value="2"> 2 </option>
											<option value="3"> 3 </option>
											<option value="4"> 4 </option>
											<option value="5"> 5 </option>
											<option value="6"> 6 </option>										
			  							</select>
			  					</div>	     					
  										<button type="submit" class="btn btn-default btn-lg">Customer_Menu</button>
					</form>
					<hr>
					<form action="kitchenChat.jsp">		
  											    									  
    					
  										<button type="submit" class="btn btn-default btn-lg">Kitchen___Menu</button>
					</form>
					
				</div>
			</div>

		</div>

	</div>


	<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>