function nameCheckFun(){
	window.open('nameCheck.jsp','cname','left=100, top=100, width=440, height=330');
}
function idCheckFun(){
	window.open('comIdCheck.jsp','id','left=100, top=100, width=440, height=330');
}

$(function(){
	
	$("input#cid").click(function(){
		if($(this).val().length==0){
			idCheckFun();
			}
	});
	
	$("input#cname").click(function(){
		if($(this).val().length==0){
			nameCheckFun();
			}
	});

	   //cname 중복체크
	$("input#idImg").click(function(){
		if($("input#ccname").val().length==0){
			alert('업체명을 입력 하세요!');
			return false;
		}
		$("form[name='cnameFrm']").submit();
	});
	
	//Cid 중복체크
	$("input#comId").click(function(){
		if($("input#id").val().length==0){
			alert('ID를 입력하세요!');
			return false;
		}
		$("form[name='ComidFrm']").submit();
	});
	

	//업체명이 중복 되지 않았으면 가져오기
	$("a#cccchere").click(function(){
		window.opener.document.submit.cname.value=this.name;
		self.close();
	});
	
	//업체 ID 중복 되지 않으면 가져오기
	$("a#pppphere").click(function(){
		window.opener.document.submit.cid.value=this.name;
		self.close();
	});
	
	
	$("input#tels").on("keyup",function(){
    	$(this).val($(this).val().replace(/[^0-9]/g,""));
    	if($("input[name='tel1']").val().length>4||$("input[name='tel2']").val().length>4||$("input[name='tel3']").val().length>4){
    		alert("전화번호가 이상합니다!");
    		$("input[name='tel1']").val('');
    		$("input[name='tel2']").val('');
    		$("input[name='tel3']").val('');
    	}
	});
	
	//비밀번호 확인 제약 입력한 비밀번호와 비밀번호확인 부분 값의 동일 여부 체크!
    $("input[name='cpassword']").on("keyup",function(){
    	$("font#chkNotice").html('');
	});
    $("input[name='password2']").on("keyup",function(){
    	if( $("input[name='cpassword']").val() != $("input[name='password2']").val()){
            $("font#chkNotice").html('비밀번호 일치하지 않음<br><br>');
            $("font#chkNotice").attr("color", "red");
          } else{
            $("font#chkNotice").html('비밀번호 일치함<br><br>');
            $("font#chkNotice").attr("color", "blue");
          }
	});
	
	 
	 $("input[name='send']").click(function(){
		 var cname=$("input#cname").val().length;
		 var cid=$("input#cid").val().length;
		 var cpass=$("input#cpassword").val().length;		
		 var cpass1=$("input[name='cpassword']").val().length;
		 var cpass2=$("input[name='password2']").val().length;
		 
		 if($("input[name='tel1']").val().length!=0||$("input[name='tel2']").val().length!=0||$("input[name='tel3']").val().length!=0){
	 			$("input[name='ctel']").val($("input[name='tel1']").val()+"-"+$("input[name='tel2']").val()+"-"+$("input[name='tel3']").val());
	 	 }else{
				$("input[name='tel1']").val('');
				$("input[name='tel2']").val('');
				$("input[name='tel3']").val('');
				$("input[name='tel1']").focus();
	 	 }
		 
		 var ctel=$("input[name='ctel']").val().length;		 
		 if(cid==0||cpass==0||cname==0||ctel==0||cpass1!=cpass2){
			 alert("빈칸 체크 하세요!!");
		 }else{
			 $("form").submit();
		 }
		 
	 });
	 
});

 
