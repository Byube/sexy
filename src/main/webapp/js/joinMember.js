function idCheckFun(){
	window.open('idcheck.jsp','id','left=100, top=100, width=440, height=330');
}

//id 중복체크
$(function(){	
	$("input#idC").click(function(){
		if($(this).val().length==0){
		idCheckFun();
		}
	});

	//id중복체크
	$("input#idImg").click(function(){
		if($("input#id").val().length==0){
			alert('ID를 입력하세요!');
			return false;
		}
		$("form[name='idFrm']").submit();
		
	});
	
	//사용가능 id 값이면 가져오기
	$("a#pppphere").click(function(){
		window.opener.document.joinSubmit.id.value=this.name;
		self.close();
	});
	
	//06-13 아이디 완료!!!
	
	
	
	//email select!!
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
	
	
	//카카오 api 활용하여 주소 값 입력
	$("a#sendPost").click(function(){
		//sendPost();
		 new daum.Postcode({
		        oncomplete: function(data) {
		            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
		            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수

	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample4_postcode').value = data.zonecode;
	                document.getElementById("sample4_roadAddress").value = roadAddr;
	                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	                
	                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	                if(roadAddr !== ''){
	                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	                } else {
	                    document.getElementById("sample4_extraAddress").value = '';
	                }

	                var guideTextBox = document.getElementById("guide");
	                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                if(data.autoRoadAddress) {
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                    guideTextBox.style.display = 'block';

	                } else if(data.autoJibunAddress) {
	                    var expJibunAddr = data.autoJibunAddress;
	                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	                    guideTextBox.style.display = 'block';
	                } else {
	                    guideTextBox.innerHTML = '';
	                    guideTextBox.style.display = 'none';
	                }
		        }
		    }).open();
	});
	
	
	//전화번호 제약 숫자만 입력가능
    $("input#tels").on("keyup",function(){
    	$(this).val($(this).val().replace(/[^0-9]/g,""));
    	if($("input[name='tel1']").val().length>3||$("input[name='tel2']").val().length>4||$("input[name='tel3']").val().length>4){
    		alert("전화번호가 이상합니다!");
    		$("input[name='tel1']").val('');
    		$("input[name='tel2']").val('');
    		$("input[name='tel3']").val('');
    	}
	});
    
    //비밀번호 확인 제약 입력한 비밀번호와 비밀번호확인 부분 값의 동일 여부 체크!
    $("input[name='password']").on("keyup",function(){
    	$("font#chkNotice").html('');
	});
    $("input[name='password2']").on("keyup",function(){
    	if( $("input[name='password']").val() != $("input[name='password2']").val()){
            $("font#chkNotice").html('비밀번호 일치하지 않음<br><br>');
            $("font#chkNotice").attr("color", "red");
          } else{
            $("font#chkNotice").html('비밀번호 일치함<br><br>');
            $("font#chkNotice").attr("color", "blue");
          }
	});
	
    $("#datepicker1").datepicker({
    	changeMonth: true,
    	changeYear: true,
    	monthNamesShort: [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
    	yearRange: "1930:2020",
    	dateFormat: "yy/mm/dd"
    	
    });
    
   
    $("input[name='send']").click(function(){
    	 if($("input[name='email1']").val().length!=0||$("input[name='email2']").val().length!=0){
    		$("input[name='email']").val($("input[name='email1']").val()+"@"+$("input[name='email2']").val());
    		
    	 }    	 
    	 if($("input[name='tel1']").val().length!=0||$("input[name='tel2']").val().length!=0||$("input[name='tel3']").val().length!=0){
 			$("input[name='tel']").val($("input[name='tel1']").val()+"-"+$("input[name='tel2']").val()+"-"+$("input[name='tel3']").val());
 			
 		 }else{
 			alert("전화번호를 체크 하세요");
			$("input[name='tel1']").val('');
			$("input[name='tel2']").val('');
			$("input[name='tel3']").val('');
			$("input[name='tel1']").focus();
 		 }
    	 if($("input[name='postnum']").val().length!=0||$("input[name='roadaddr']").val().length!=0||$("input[name='detailaddr']").val().length!=0){
    		$("input[name='address']").val("("+$("input[name='postnum']").val()+")"+$("input[name='roadaddr']").val()+"-"+$("input[name='detailaddr']").val());    		
    	 }   
         $("form[name='joinSubmit']").submit();
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

















