function nameCheckFun(){
	window.open('nameCheck.jsp','cname','left=100, top=100, width=440, height=330');
}

$(function(){
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

	//업체명이 중복 되지 않았으면 가져오기
	$("a#cccchere").click(function(){
		window.opener.document.submit.cname.value=this.name;
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
	 
	 $("input[name='send']").click(function(){
		 if($("input[name='tel1']").val().length!=0||$("input[name='tel2']").val().length!=0||$("input[name='tel3']").val().length!=0){
	 			$("input[name='ctel']").val($("input[name='tel1']").val()+"-"+$("input[name='tel2']").val()+"-"+$("input[name='tel3']").val());
	 		 }else{
	 			alert("전화번호를 체크 하세요");
				$("input[name='tel1']").val('');
				$("input[name='tel2']").val('');
				$("input[name='tel3']").val('');
				$("input[name='tel1']").focus();
	 		 }
		 
		 
		 if($("input#cname").val().length==0||$("input#ctel").val().length==0){
			 alert("업체명 및 업체 연락처를 입력하세요!");
			 $("input#cname").val("");
			 $("input#ctel").val("");
		 }else{
			 $("form").submit();
		 }
		 
	 });
	 
});

 
