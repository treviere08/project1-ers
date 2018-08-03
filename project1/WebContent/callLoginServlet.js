$(document).ready(function() {
	
	$('#Submit').click(function() {
		var email = $("#lemail").val();
	    var pass = $("#lpass").val();
	    if(email == ""){
	        alert("Username is required");
	        return;
	    }
	    if(pass == ""){
	        alert("Password is required");
	        return;
	    }
		$.ajax({
			url : 'LoginServlet',
			type : 'post',
			data : {
				lemail : email,
				lpass : pass
			},
			success: function(responseText){
				window.location.replace(responseText); 
			}
		});
	});
});