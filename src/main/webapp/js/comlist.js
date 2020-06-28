$(function(){
	
	$("input#delpass").hide();
	
	$("button[name='del']").click(function(){
		var id = this.id;
		$("input#delpass").fadeOut(100).fadeIn(1000);
		$("input[name='delbutton']").val(id+"번글 삭제!");
		
	});
	
	
	$("button[name='mod']").click(function(){
		var id = this.id;
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