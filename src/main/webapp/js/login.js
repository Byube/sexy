 $(function(){
	 $("button#loginsubmit").click(function(){
		var id = $("input#id").val();
		var pw = $("input#password").val();
		if(id.length==0||pw.length==0){
			alert("아이디 또는 비밀번호를 입력하세요!");
			$("input#id").val("");
			$("input#password").val("");
		}else{
			$("form#login").submit();			
		}
	 });
  });