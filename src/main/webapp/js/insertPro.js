function number(p){
	$(p).val($(p).val().replace(/[^0-9]/g,""));
}

$(function(){
	
	$("#pprice").on("keyup",function(){
		number(this);
	});
	$("#pqty").on("keyup",function(){
		number(this);
	});
	
	$("#send").click(function(){
		var cno = $("#cno").val().length;
		var pname = $("#pname").val().length;
		var pprice = $("#pprice").val().length;
		var pqty = $("#pqty").val().length;
		var cate = $("#pcategory option:selected").val();
		var cate2 = $("#pcategory option:selected").val().length;
		var purl = $("#purl").val().length;
		var pfile = $("#file").val().length;
		
		//일반회원이 해당 페이지에 들어 왔을때
		/*if(cno==0){
			alert("업체회원만 등록 가능합니다.");
			$(location).attr("href","login.jsp");
			return;
		}*/
		
		//빈칸 제약사항
		if(pname==0){
			alert("상품명 입력 하세요");
			$("#pname").val("");
			$("#pname").focus();			
		}else if(pprice==0){
			alert("상품 가격을 입력 하세요");
			$("#pprice").val("");
			$("#pprice").focus();			 
		}else if(pqty==0){
			alert("제품 수량을 입력하세요");
			$("#pqty").val("");
			$("#pqty").focus();			
		}else if(cate==0){
			alert("제품 분류를 선택 하세요");			
		}else if(purl==0){
			alert("제품 url 주소를 입력하세요");
			$("#purl").val("");
			$("#purl").focus();			
		}else if(pfile==0){
			alert("제품 사진을 등록 하세요");			
		}else{
			$("form").submit();
		}
		
		
		
		
	});
	
	
});