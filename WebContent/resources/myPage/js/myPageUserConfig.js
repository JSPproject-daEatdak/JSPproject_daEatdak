function check_pw(){
    var pw = document.getElementById('configPW').value;
    var check_SC = 0;


    if(document.getElementById('configPW').value !='' && document.getElementById('configPW2').value!=''){
        if(document.getElementById('configPW').value==document.getElementById('configPW2').value){
            document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
            document.getElementById('check').style.color='blue';
        }
        else{
            document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
            document.getElementById('check').style.color='red';
        }
    }
}

function selectEmail(ele){
    var $ele = $(ele);
    var $email2 = $('input[name=email2]');

    // '1'인 경우 직접입력
    if($ele.val() == "1"){
        $email2.attr('readonly', false);
        $email2.val('');
    } else {
        $email2.attr('readonly', true);
        $email2.val($ele.val());
    }
}

/*function configCheck() {
  $(".updateBtn").click(function() {
		
		var configPw = $("#configPW").val();
		var configPw2 = $("#configPW2").val();
		var email1 = $("#email1").val();
		var email2 = $("#email2").val();
		var userPhone = $("#userPhone").val();
		var adress = $("#adress").val();
		alert("ee!!!e");
		alert("p1 : " + configPw + "<br>p2 : " + configPw2);
		alert("p1 : " + email1 + "<br>p2 : " + email2);
		alert(" ? : " + userPhone)
		
		if("password1" == "password1") {
			alert("테스트");
			$(".pwCheck").css("display","block");
			$(".pwCheck").css("color","red");			
			return false;
		}
		if(configPw != configPw2) {
			$(".pwCheck").css("display","block");
			$(".pwCheck").css("color","red");			
			return false;
		} else {
			
		}

		
			
		if(configPw == undefined || configPw == "" || configPw === null) {
			$(".pwCheck").css("display","block");
			$(".pwCheck").css("color","blue");			
			return false;
		} else if(configPw2 == undefined || configPw2 == "" || configPw2 === null) {
			$(".pwCheck").css("display","block");
			$(".pwCheck").css("color","yellow");			
			return false;
		} else if(email1 == undefined || email1 == "" || email1 === null) {
			$(".mailCheck").css("display","block");
			$(".mailCheck").css("color","red");			
			return false;
		} else if(email2 == undefined || email2 == "" || email2 === null) {
			$(".mailCheck").css("display","block");
			$(".mailCheck").css("color","blue");			
			return false;
		} else if(userPhone == undefined || userPhone == "" || userPhone === null) {
			$(".phoneCheck").css("display","block");
			$(".phoneCheck").css("color","red");			
			return false;
		} else if(adress == undefined || adress == "" || adress === null) {
			$(".adressCheck").css("display","block");
			$(".adressCheck").css("color","blue");			
			return false;
		} else {
			var up = confirm("수정 하시겠습니까?");
			link = "index.jsp"
			if(up) {
				alert("수정되었습니다.")
				location.href = link;
			} else {
				return false;
			}
		}

  })
};*/


$('document').ready(function() {
	/*configCheck();*/
});	



$('.updateBtn').on('click', function(){
	let configPw = $("#configPW").val();
	let configPw2 = $("#configPW2").val();
	let email1 = $("#email1").val();
	let email2 = $("#email2").val();
	let userPhone = $("#userPhone").val();
	let adress = $("#adress").val();
	
	if(configPw != configPw2) {
		$(".pwCheck").css("display","block");
		$(".pwCheck").css("color","red");	
		return false;
	} else {
		if(configPw && configPw2 && email1 && email2 && userPhone && adress){
			console.log("다 있다!!")
			alert("수정되었습니다.");
			$('#myPageForm').submit();
		} else {
			alert("입력을 안 한 정보가 있습니다.");
			return false;
		}

	}
	
});






















