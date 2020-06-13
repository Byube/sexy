function idCheckFun(){
	window.open('idcheck.jsp','id','left=100, top=100, width=440, height=330');
}
function sendPost(){
	window.open('address.jsp','addr','left=300, top=100, width=445, height=430');
}

$(function(){	
	$("input#idC").click(function(){
		if($(this).val().length==0){
		idCheckFun();
		}
	});
	
	$("input#idImg").click(function(){
		if($("input#id").val().length==0){
			alert('ID를 입력하세요!');
			return false;
		}
		$("form[name='idFrm']").submit();
		
	});	
	$("a#pppphere").click(function(){
		window.opener.document.rfrm.id.value=this.name;
		self.close();
	});
	
	//06-13 아이디 완료!!!
	
	
	
	
	$("select[name='email3']").change(function(){
		if($(this).val()==$("option#dr").val()){
			$("input[name='email2']").val("");
			$("input[name='email2']").attr("disabled",false);
		}else{
			$("input[name='email2']").val($(this).val());
			$("input[name='email2']").attr("disabled",true);
	}
		checkfield();
	});
	
	
	
	$("a#sendPost").click(function(){
		sendPost();
	});
	$("input#searchDong").click(function(){
		if($("input#dong").val().length==0){
			alert('Dong Input');
			return false;
		}
		
		$("form[name='searchFrm']").submit();
	});
	$("a[name='addr']").click(function(){
		window.opener.document.rfrm.post1.value=$(this).text().trim().split("-")[0];
		window.opener.document.rfrm.post2.value=$(this).text().trim().split("-")[1];
		window.opener.document.rfrm.address1.value=$(this).text().trim().split("-")[2];
		self.close();
	});
	
	
	
    $("input#tels").on("keyup",function(){
    	$(this).val($(this).val().replace(/[^0-9]/g,""));
    	if($("input[name='tel1']").val().length>3||$("input[name='tel2']").val().length>4||$("input[name='tel3']").val().length>4){
    		alert("전화번호가 이상합니다!");
    		$("input[name='tel1']").val('');
    		$("input[name='tel2']").val('');
    		$("input[name='tel3']").val('');
    	}
	});
   
    $("input[name='password1']").on("keyup",function(){
    	$("font#chkNotice").html('');
	});
    $("input[name='password2']").on("keyup",function(){
    	if( $("input[name='password1']").val() != $("input[name='password2']").val()){
            $("font#chkNotice").html('비밀번호 일치하지 않음<br><br>');
            $("font#chkNotice").attr("color", "red");
          } else{
            $("font#chkNotice").html('비밀번호 일치함<br><br>');
            $("font#chkNotice").attr("color", "blue");
          }
	});
	
/*	$("input[type='submit']").click(function(){
		if($("input[name='id']").val().length==0){
			alert("아이디를 확인 하시오!");
			$("input[name='id']").val('');
		}
		if($("input[name='name']").val().length==0){
			alert("이름을 확인 하시오!");
			$("input[name='name']").val('');
		}
		if($("input[name='nickname']").val().length==0){
			alert("닉네임을 확인 하시오!");
			$("input[name='nickname']").val('');
		}
		if($("input[name='birthdate']").val().length==0){
			alert("생일을 입력 하시오!");
			$("input[name='birthdate']").val('');
		}
		
		
		if($("input[name='password1']").val().length==0||$("input[name='password2']").val().length==0){
			alert("비밀번호를 입력하세요!");
			$("input[name='password1']").val('');
			$("input[name='password2']").val('');
			$("input[name='password1']").focus();
		}else{
			$("input[name='password']").val($("input[name='password1']").val());
		}
		
		
		if($("input[name='tel1']").val().lengt==0||$("input[name='tel2']").val().length==0||$("input[name='tel3']").val().length==0){
			alert("전화번호를 체크 하세요");
			$("input[name='tel1']").val('');
			$("input[name='tel2']").val('');
			$("input[name='tel3']").val('');
			$("input[name='tel1']").focus();
		}else{
			$("input[name='tel']").val($("input[name='tel1']").val()+"-"+$("input[name='tel2']").val()+"-"+$("input[name='tel3']").val());
		}
		if($("input[name='email1']").val().length==0||$("input[name='email2']").val().length==0){
		    alert("Email Check!");
		    $("input[name='email1']").val('');
		    $("input[name='email2']").val('');
		    $("select#sel").prop("selectedIndex",0);
		    return false;
		}else{
		$("input[name='email']").val($("input[name='email1']").val()+"@"+$("input[name='email2']").val());
		}
		//수정코드
		if($("input[name='address1']").val().length==0||$("input[name='address2']").val().length==0){
			alert("주소를 입력 하세요!");
			$("input[name='post1']").val("");
			$("input[name='post2']").val("");
			$("input[name='address1']").val("");
			$("input[name='address2']").val("");
			return false;
		}else{
			$("input[name='address']").val($("input[name='post1']").val()+"-"+$("input[name='post2']").val()+"@"+$("input[name='address1']").val()+"#"+$("input[name='address2']").val());
		}
		//원래코드
		if($("input[name='address1']").val().length==0||$("input[name='address2']").val().length==0){
			alert("주소를 입력 하세요!");
			$("input[name='post1']").val("");
			$("input[name='post2']").val("");
			$("input[name='address1']").val("");
			$("input[name='address2']").val("");
			return false;
		}else{
			$("input[name='address']").val($("input[name='post1']").val()+"-"+$("input[name='post2']").val()+$("input[name='address1']").val()+" "+$("input[name='address2']").val());
		}
		
		$("form").submit();
	});*/
	
	
    
});

















