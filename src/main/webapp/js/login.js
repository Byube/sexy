
$(function(){
	 
	 $("button#loginsubmit").click(function(){
		var check = $("input[name='select']:checked").val();
		if(check=='고객'){
			$("form#login").attr("action","/sexy/loginFun.vip");
		}else{
			$("form#login").attr("action","/sexy/adloginFun.vip");
		}
		
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