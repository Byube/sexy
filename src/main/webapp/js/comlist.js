function actionFun(pno,action){
	$.ajax({
		url:"/sexy/delpasschek.vip",
		dataType:"json",
		type:"GET",
		data:{no:pno,pass:action},
		success:function(v){
			if(v.state=='true'){
				alert(pno+"번 글이 삭제 되었습니다.");
				document.location.href="/sexy/deletePro.vip?no="+pno;
			}else{
				alert("비번이 틀렸습니다.");
			}
		},error:function(e){
			alert(e);
		}
	});
}
$(function(){
	
	$("input#delpass").hide();
	
	$("button[name='del']").click(function(){
		var id = this.id;	
		
		if($(this).text()=='DEL'){
			var pass = $("input[name='"+id+"']").val();
			actionFun(id,pass);
			$("input#delpass").hide();
		}else{
			$("input#delpass").val("");
			$("input[name='"+id+"']").fadeOut(100).fadeIn(1000);			
		}		
			
		
		$(this).text($(this).text()=='삭제'?"DEL":"삭제");
	});
	
	
	$("button[name='mod']").click(function(){
		var id = this.id;
		if($(this).text()=='MOD'){
			alert("test");
		}
		
		$("tr[lang='"+this.id+"'] button[name='mod']").each(function(){
			$(this).text($(this).text()=='수정'?"MOD":"수정");
			if($(this).text()=='수정'){
				$("tr[lang='"+id+"']").eq(0).show();
				$("tr[lang='"+id+"']").eq(1).hide();
			}else{
				$("tr[lang='"+id+"']").eq(1).show();
				$("tr[lang='"+id+"']").eq(0).hide();
			}
		});	
	});
});

