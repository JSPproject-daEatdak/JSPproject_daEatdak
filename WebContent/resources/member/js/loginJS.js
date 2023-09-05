function loginName() {

    $(".btnLogin").click(function() {
		
		
		var Email = $("#userEmail").val();
		var password = $("#userPassword").val();

		if(Email == "" || Email == undefined) {
			$('.mailNull').css("display","block");
			$('.mailNull').css("color","red");
			$('.pwNull').css("display","none");
			return false;

		} else if(password == "" || password == undefined) {
			$('.pwNull').css("display","block");
			$('.pwNull').css("color","red");
			$('.mailNull').css("display","none");
			return false;
		} 
		$(".loginX").css("color", "red");
		
		return true;
	})
  }






$('document').ready(function(){

	loginName();
	});


