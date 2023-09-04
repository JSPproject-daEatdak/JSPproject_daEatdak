/**
 * 
 */

/*
 var userEmail = document.getElementById("email");
 var emailResult = document.getElementById("emailResult");
 let userName = document.getElementById("name");
 let userPassword = document.getElementById("pw");
 let userPassword2 = document.getElementById("pw2");
 let userPhone = document.getElementById("phonenumber");
 let userAddress = document.getElementById("address");
 
 
 if(userEmail.value==''){
	emailResult.innerText="야";
	 userEmail.focus();
	 return false;
 }
 
 
 */
window.onload = function() {

	document.getElementById("PostCodeSearch").onclick = function PostCodeSearch() {
		new daum.Postcode({
			oncomplete: function(data) {
				console.log(data);
				document.querySelector('#address').value = data.roadAddress;
			}
		}).open();
	}
}
	const regex = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*()_+])[a-zA-Z\d!@#$%^&*()_+]{8,}$/;

		function join() {
			if ($('#email').val() == '' || $('#email').val() == null) {
				alert('이메일을 입력해주세요');
				$('#email').focus();
				return false;
			}
			if(!$('#name').val()){
				alert("이름을 입력해주세요.");
				$('#name').focus();
				return false;
			}
	/*		 if (!regex.test($('#').val())) {
				alert("사용 불가능한 비밀번호입니다.<br>영어, 숫자, 특수문자를 포함하여 8글자 이상 작성하세요");
				$('.pw').focus();
				return false;
				}
			
			if(!$('.age>input').val()){
				alert("나이를 입력해주세요.");
				$('.age>input').focus();
				return false;
			}*/
			  
		};
	

		