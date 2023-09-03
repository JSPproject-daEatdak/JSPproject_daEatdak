function loginName() {

    $(".btnLogin").click(function() {
		
		
		var name = $("#userName").val();
		var password = $("#userPassword").val();

		if(name == "" || name == undefined) {
			$('.nameNull').css("display","block");
			$('.nameNull').css("color","red");
			$('.pwNull').css("display","none");
			return false;

		} else if(password == "" || password == undefined) {
			$('.pwNull').css("display","block");
			$('.pwNull').css("color","red");
			$('.nameNull').css("display","none");
			return false;
		} 
		$(".loginX").css("color", "red");
		
		/*if(name != "User1") {
			alert("test");
			$('.loginX').css("display", "block");
			$('.loginX').css("color", "red");
			return false;
			
		} else if(password != "password1") {
			alert("test2");
			$('.loginX').css("display", "block");
			$('.loginX').css("color", "red");
			return false;
		} else {
			$('.loginX').css("display", "none");			
		}*/
		
		return true;
	})
  }







$('document').ready(function(){

	loginName();
	});


