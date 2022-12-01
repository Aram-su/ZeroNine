function signUpCheck(){
	var name = document.getElementById('name');
	var nick = document.getElementById('nickname');
	var id = document.getElementById('id');
	var pw = document.getElementById('password');
	var email = document.getElementById('email');
	var addr = document.getElementById('address');
	var flag = 0;
	
	var idReg = /^[a-z|A-Z|0-9]/;
	var pwReg = /^[a-z|A-Z|0-9]/;
	var emailReg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	
	if ( name.value == "" ){
		alert("이름을 입력해주세요");
		flag = 1;
	} if ( nick.value=="" ){
		alert("별명을 입력해주세요");
		flag = 1;
	} if ( id.value==""){
		alert("아이디를 입력해주세요");
		flag = 1;
	} if ( pw.value=="" ){
		alert("비밀번호를 입력해주세요");
		flag = 1;
	} if ( email.value==""){
		alert("이메일을 입력해주세요");
		flag = 1;
	} if ( addr.value==""){
		alert("주소를 입력해주세요");
		flag = 1;
	} 
	
	if ( id.value.length < 8 || id.value.length > 20 ){
		alert("아이디의 길이는 8~20 이어야 합니다.");
		flag = 2;
	}  if ( pw.value.length < 8 || pw.value.length > 20 ){
		alert("비밀번호의 길이는 8~20 이어야 합니다.");
		flag = 2;
	} 
	
	if ( !idReg.test(id.value)){
		alert("아이디가 형식과 다릅니다");
		flag = 3;
	} if ( !pwReg.test(pw.value)){
		alert("비밀번호가 형식과 다릅니다");
		flag = 3;
	} if ( !emailReg.test(email.value)){
		alert("이메일이 형식과 다릅니다");
		flag = 3;
	}
	
	if ( flag != 0 ){
		return;
	}

	document.getElementById("signUpForm").submit();
}