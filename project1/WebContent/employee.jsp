<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Employee Homepage</title>
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
	</head>
	<body>
		<div class="container">
			<div class="jumbotron">
				<h1 class="text-center">Employee Reimbursement Form</h1>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="text-center">
						Welcome <%=  session.getAttribute("currentSessionUname") %>
					</div>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-md-12">
					<div class="text-center">
						Please fill out the Reimbursement Information form to submit your request.
						<br>
					</div>
					<br><br>
					<div id="statusresult"></div>
					<form>
						<fieldset>
							<legend>Reimbursement Information</legend>
							<input type="hidden" id="submission"></input>
							<div>Employee ID</div>
							<input type="text" value=""></input>
							<div>First Name</div>
							<input type="text" value=""></input>
							<div>Last Name</div>
							<input type="text" value=""></input>
							<br><br>
							<div>Amount</div>
							<input type="text" value=""></input>
							<br><br>
							<div>Type</div>
							<input type="radio" name="reimb_type"><span> Lodging</span>
							<br>
							<input type="radio" name="reimb_type"><span> Travel</span>
							<br>
							<input type="radio" name="reimb_type"><span> Food</span>
							<br>
							<input type="radio" name="reimb_type"><span> Other</span>
							<br>
							<input type="text"><br>
							<div>If you selected Other, please briefly describe the nature of your reimbursement.</div>
							<br><br>
							<input type="submit" value="Submit"></input>
						</fieldset>
					</form>
					<div id="Email"></div>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-md-12" id="requests"></div>
			</div>
		</div>
	</body>
</html>