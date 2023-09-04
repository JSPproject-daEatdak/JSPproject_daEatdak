function pwCheck() {
	$(".admit").click(function() {
		var pw = $("#inputPassword").val();
		
		if (pw != "password00") {
			$('#notpw').css("display", "block");
			$('#notpw').css("color", "red");
			return false;
		} else {
			location.href = "myPageUserConfig.jsp";
		}

	});
};


$('document').ready(function() {
	pwCheck();
});	