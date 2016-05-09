<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Self Ordering App</title>
<link href='https://fonts.googleapis.com/css?family=Lato:400,700 rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<link rel="stylesheet" href="Css/kitchen.css">
<link href='https://fonts.googleapis.com/css?family=Dosis' rel='stylesheet' type='text/css'>
<%
String Order=" Your Order is listed - ";
if(!request.getParameter("FriedChicken").equals("0"))
	Order+="FriedChicken * "+request.getParameter("FriedChicken")+"\n";
if(!request.getParameter("SpringRoll").equals("0"))
	Order+="SpringRoll * "+request.getParameter("SpringRoll")+"\n ";
if(!request.getParameter("Meatloaf").equals("0"))
	Order+="Meatloaf * "+request.getParameter("Meatloaf")+"\n ";
if(!request.getParameter("Burger").equals("0"))
	Order+="Burger * "+request.getParameter("Burger")+"\n ";
if(!request.getParameter("Fish").equals("0"))
	Order+="Fish * "+request.getParameter("Fish")+"\n ";
if(!request.getParameter("Pasta").equals("0"))
	Order+="Pasta * "+request.getParameter("Pasta")+"\n ";
if(!request.getParameter("Pizza").equals("0"))
	Order+="Pizza * "+request.getParameter("Pizza")+"\n ";
if(!request.getParameter("Pancake").equals("0"))
	Order+="Pancake * "+request.getParameter("Pancake")+"\n";


%>


<script>
var websocket=new WebSocket("ws://10.12.4.145:8080/Order/chat");
websocket.onmessage=function processMessage(message){
console.log(message);
	var jsonData=JSON.parse(message.data);
	if(jsonData.message!=null)tablearea.value+=jsonData.message+"\n";
}
function sendMessage(){
	var table=document.getElementById("table").value;
	console.log("admin:"+tableinput.value+":table"+table);
	websocket.send("admin:"+tableinput.value+":table"+table);
	tableinput.value="";
}
window.onload=function(){
	setTimeout(waitTill, 500);
}
function waitTill(){
	if(websocket.readyState==1){
		var table=document.getElementById("table").value;
		websocket.send("admin:connecting:table"+table);
	}else{
		setTimeout(waitTill,500);
	}
}
function runScript(e,table) {
    if (e.keyCode == 13) {
      	
      	sendMessage();
        return false;
    }
}
</script>
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
	
<input type="hidden" value="<%=request.getParameter("table")%>" id="table"/>
<div class="container">
	<div class="row">
		<div class="col-lg-offset-4 col-lg-6">
		<button class="btn btn-primary chathead" type="button">
  Chat with Kitchen Staff <span class="badge">4</span>
</button>
		
			<div class="chat" >
				<textArea id="tablearea" readonly="readonly" rows="20" cols="51" style=" box-shadow: 10px 10px 5px #888888;"></textArea></br>
				<input type="text" value="<%=Order%>"  id="tableinput" onkeypress="return runScript(event)" class="chathead" style=" box-shadow: 10px 10px 5px #888888;"/>
			</div>
		</div>
		
	</div>	
</div>
	

	<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>