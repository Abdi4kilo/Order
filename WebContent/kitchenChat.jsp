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
<script>
	var websocket=new WebSocket("ws://10.12.4.145:8080/Order/chat");
	var fromadmin="";
	websocket.onmessage=function processMessage(message){
		var jsonData=JSON.parse(message.data);
		if(jsonData.message!=null){
			var split=jsonData.message.split(":");
			console.log(split[0]);
			if(split[0]==="table1"){
				table1area.value+=jsonData.message+"\n";
			}else if(split[0]==="table2"){
				table2area.value+=jsonData.message+"\n";
			}else if(split[0]==="System"){
				table2area.value+=jsonData.message+"\n";
				table1area.value+=jsonData.message+"\n";
			}
		}
		if(fromadmin==='table1'){
			table1area.value+=jsonData.message+"\n";
		}else if(fromadmin==='table2'){
			table2area.value+=jsonData.message+"\n";
		}
		
		fromadmin="";
	}
	function sendMessage(table){
		if(table=='table1'){
			websocket.send(table+":"+table1input.value+":admin");
			fromadmin='table1';
			table1input.value="";
		}else if(table=='table2'){
			websocket.send(table+":"+table2input.value+":admin");
			fromadmin='table2';
			table2input.value="";
		}
	
	}
	window.onload=function(){
		setTimeout(waitTill, 500);
	}
	function waitTill(){
		if(websocket.readyState==1){
			websocket.send("tables:connecting:admin");
		}else{
			setTimeout(waitTill,500);
		}
	}
	function runScript(e,table) {
	    if (e.keyCode == 13) {
	      	sendMessage(table);
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

<div class="container">
	<div class="row">
		<div class="col-lg-6">
		<button class="btn btn-primary chathead" type="button" >
  Chat with Table1 <span class="badge">4</span>
			</button>
			<div class="chat">
				<textArea id="table1area" readonly="readonly" rows="20" cols="51" style="box-shadow: 10px 10px 5px #888888;"></textArea></br>
				<input type="text" id="table1input" onkeypress="return runScript(event,'table1')" class="chathead inputShadow" size="50"/>
			</div>
			
		</div>
		<div class="col-lg-offset-1 col-lg-5">
		<button class="btn btn-primary chathead" type="button" >
  Chat with Table2 <span class="badge">4</span>
			</button>
			<div class="chat">
				<textArea id="table2area" readonly="readonly" rows="20" cols="51" style="box-shadow: 10px 10px 5px #888888;"></textArea></br>
				<input type="text" id="table2input" onkeypress="return runScript(event,'table2')" class="chathead" size="50"/>
			</div>
		</div>
	</div>	
</div>
	

	<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>