function CheckAddProduct() {

	var id = document.getElementById("id");
	var pname = document.getElementById("pname");
	var price = document.getElementById("price");
	var pnum = document.getElementById("pnum");
	var address = document.getElementById("address");
	
	
	if(!check(/^ZN[0-9]{4,4}$/, id, "[상품코드]\nZN과 4자리 숫자를 조합하여 입력하세요.\n첫글자는 반드시 ZN으로 시작하세요.") )
		return false;
		

	if (pname.value.length < 1 || pname.value.length > 50) {
		alert("[상품명]\n최소 1자에서 최대 50자까지 입력하세요");
		pname.select();
		pname.focus();
		return false;
	}

	if (price.value.length == 0 || isNaN(price.value)) {
		alert("[가격]\n숫자만 입력하세요");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}

	if (price.value < 0) {
		alert("[가격]\n음수를 입력할 수 없습니다");
		price.select();
		price.focus();
		return false;
	} 
	
	if ( pnum.value < 0 ){
		alert("[인원 수]\n음수를 입력할 수 없습니다");
		pnum.select();
		pnum.focus();
		return false;
	}
	

	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	 document.getElementById("newProduct").submit();
}
