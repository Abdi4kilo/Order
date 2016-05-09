
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href='https://fonts.googleapis.com/css?family=Lato:400,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<link rel="stylesheet" href="Css/loginStyle.css">
<title>Login Page</title>
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
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>




<div id="content" class ="container">
<form  action="login" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="userEmail" type="email" class="form-control" id="exampleInputEmail2" placeholder="Email" validate>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="password" type="password" class="form-control" id="exampleInputPassword2" placeholder="Password">
  </div>
  
  <button type="submit" class="btn btn-default">Submit</button>
</form>
<c:if test="${loginFailed}">
        <b>The userEmail and password you entered are not correct.</b>
    </c:if>
</div>

	<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>