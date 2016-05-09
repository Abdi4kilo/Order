
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Self Ordering App</title>
<link href='https://fonts.googleapis.com/css?family=Lato:400,700 rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">




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
				
					<li> <a href="#">Table#<%=request.getParameter("table")%></a></li>	
					<li> <a href="LogoutServlet">Log Out</a></li>				
			
			</ul>

			
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>

<div class="container">
<form action="chat.jsp">
	<div class="row">
		<div class="col-lg-3">
			<div class="thumbnail">
				<img src="images/beef.jpg">
				<div class="caption">
				<h3>Meatloaf</h3>
				<p>Meatloaf is a dish of ground meat mixed with other ingredients, 
				formed into a loaf shape, then baked or smoked. The loaf shape is 
				formed by either cooking it in a loaf pan, or forming it by hand on a 
				flat baking pan.</p>
				</div>
				<div class="input-group">
					<label ><h4>Order#</h3></label>
     									<select name="Meatloaf" >
											<option value="0"> 0 </option>
											<option value="1"> 1 </option>
											<option value="2"> 2 </option>
											<option value="3"> 3 </option>
											<option value="4"> 4 </option>
											<option value="5"> 5 </option>										
			  							</select>
					
				</div>
				
			</div>
		</div>
		<div class="col-lg-3">
			<div class="thumbnail">
				<img src="images/burger.jpg">
				<div class="caption">
				<h3>Burger</h3>
				<p>A hamburger is a sandwich consisting of one or more 
				cooked patties of ground meat, usually beef, placed inside a sliced 
				bread roll or bun. .</p>
				</div>
				<div class="input-group">
					<label ><h4>Order#</h3></label>
     									<select name="Burger" >
											<option value="0"> 0 </option>
											<option value="1"> 1 </option>
											<option value="2"> 2 </option>
											<option value="3"> 3 </option>
											<option value="4"> 4 </option>
											<option value="5"> 5 </option>										
			  							</select>
					
				</div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="thumbnail">
				<img src="images/chicken.jpg">
				<div class="caption">
				<h3>Fried Chicken</h3>
				<p>Fried chicken is a dish consisting of chicken pieces usually from broiler chickens 
				which have been floured or battered and then pan-fried, deep fried, or pressure fried.</p>
				</div>
				<div class="input-group">
					<label ><h4>Order#</h3></label>
     									<select name="FriedChicken" >
											<option value="0"> 0 </option>
											<option value="1"> 1 </option>
											<option value="2"> 2 </option>
											<option value="3"> 3 </option>
											<option value="4"> 4 </option>
											<option value="5"> 5 </option>										
			  							</select>
					
				</div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="thumbnail">
				<img src="images/fish.jpg">
				<div class="caption">
				<h3>Fish</h3>
				<p>Fish are consumed as food by many species, including humans. 
				It has been an important source of protein and other nutrients for humans
				 throughout recorded history</p>
				</div>
				<div class="input-group">
					<label ><h4>Order#</h3></label>
     									<select name="Fish" >
											<option value="0"> 0 </option>
											<option value="1"> 1 </option>
											<option value="2"> 2 </option>
											<option value="3"> 3 </option>
											<option value="4"> 4 </option>
											<option value="5"> 5 </option>										
			  							</select>
					
				</div>
			</div>
			
		</div>
		<div class="clearfix visible-lg"></div>
		
		<div class="col-lg-3">
			<div class="thumbnail">
				<img src="images/pancake.jpg">
				<div class="caption">
				<h3>Pancake</h3>
				<p>A pancake is a flat cake, often thin, and round, prepared from a starch-based batter that may also contain eggs, 
				milk and butter and cooked on a hot surface such as a griddle or frying pan, often with oil or butter</p>
				</div>
				<div class="input-group">
					<label ><h4>Order#</h3></label>
     									<select name="Pancake" >
											<option value="0"> 0 </option>
											<option value="1"> 1 </option>
											<option value="2"> 2 </option>
											<option value="3"> 3 </option>
											<option value="4"> 4 </option>
											<option value="5"> 5 </option>										
			  							</select>
					
				</div>
			</div>
			
		</div>
		<div class="col-lg-3">
			<div class="thumbnail">
				<img src="images/pasta.jpg">
				<div class="caption">
				<h3>Pasta</h3>
				<p>Pasta is a staple food of traditional Italian cuisine, with the first reference 
				dating to 1154 in Sicily. It is also commonly used to refer to the variety of pasta dishes.</p>
				</div>
				<div class="input-group">
					<label ><h4>Order#</h3></label>
     									<select name="Pasta" >
											<option value="0"> 0 </option>
											<option value="1"> 1 </option>
											<option value="2"> 2 </option>
											<option value="3"> 3 </option>
											<option value="4"> 4 </option>
											<option value="5"> 5 </option>										
			  							</select>
					
				</div>
			</div>
			
		</div>
		<div class="col-lg-3">
			<div class="thumbnail">
				<img src="images/pizza.jpg">
				
				<div class="caption">
				<h3>Pizza</h3>
				<p>Pizza is a flatbread generally topped with tomato sauce and cheese and baked in an oven.
				 It is commonly topped with a selection of meats, vegetables and condiments.</p>
				</div>
				<div class="input-group">
					<label ><h4>Order#</h3></label>
     									<select name="Pizza" >
											<option value="0"> 0 </option>
											<option value="1"> 1 </option>
											<option value="2"> 2 </option>
											<option value="3"> 3 </option>
											<option value="4"> 4 </option>
											<option value="5"> 5 </option>										
			  							</select>
					
				</div>
			</div>
			
		</div>
		<div class="col-lg-3">
			<div class="thumbnail">
				<img src="images/spring.jpg">
				<div class="caption">
				<h3>Spring rolls</h3>
				<p>Spring rolls are a large variety of filled, rolled appetizers or dim sum found in East Asian
				 and Southeast Asian cuisine. 
				The name is a literal translation of the Chinese chūn juǎ.</p>
				</div>
				<div class="input-group">
					<label ><h4>Order#</h3></label>
     									<select name="SpringRoll" >
											<option value="0"> 0 </option>
											<option value="1"> 1 </option>
											<option value="2"> 2 </option>
											<option value="3"> 3 </option>
											<option value="4"> 4 </option>
											<option value="5"> 5 </option>										
			  							</select>
					
				</div>
				</div>
			</div>
		</div>
		<input type="hidden" name="table" value=<%=request.getParameter("table")%>>
		<button type="submit" class="btn btn-default btn-lg">Next</button>
	</form>
</div>
<br>

	

	<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>