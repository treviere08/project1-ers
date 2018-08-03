<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Employee Reimbursement System</title>
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
		<style>
			body{ color:green; }  
			.col-md-6, .col-md-12 { border-radius: 25px; background: #BBFFBB; padding: 20px; }
			.hide { visibility:hidden; }
			legend { border-bottom: 2px groove #88CC88; }
			.row 
			{
				display: -webkit-box;
				display: -webkit-flex;
				display: -ms-flexbox;
				display: flex;
				flex-wrap: wrap;
			}
			.row > [class*='col-'] 
			{
				display: flex;
				flex-direction: column;
			}
		</style>
<!-- AJAX SCRIPT -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="callLoginServlet.js"></script>
	</head>
	<body>
		<div class="container">
			<div class="jumbotron">
				<h1 class="text-center">Employee Reimbursement Form</h1>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="text-center">Please login to ERS in order to send your request.</div>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-md-12">
					<div id="statusresult"></div>
					<form name="myForm">
						<fieldset>
							<legend>Login</legend>
							<div>Email Address</div>
							<input type="text" id="lemail"></input>
							<div>Password</div>
							<input type="text" id="lpass"></input>
							<br><br>
							<input id="Submit" type="button" value="Submit"></input>
						</fieldset>
					</form>
					<div id="Email"></div>
				</div>
			</div>
		</div>
	</body>
</html>