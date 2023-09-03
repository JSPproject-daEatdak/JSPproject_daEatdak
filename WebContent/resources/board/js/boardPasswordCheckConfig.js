function checkPassword(){
    const inputPassword = document.getElementById('inputPassword').value;
    const myPassword ='${board.getBoardPassword}';
	// 패스워드 조회하여 일치여부로 바꾼다
    if(inputPassword == myPassword){
        window.location.href="boardViewOk.bo";
    }else{
        alert("비밀번호가 일치하지 않습니다.");
    }
    console.log(inputPassword);
    console.log(myPassword);
}