<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<title>회원가입</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Datepicker css -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

</head>
<body>

<!-- PRE LOADER include -->
<!-- Navigation section include  -->
<jsp:include page="/include/Navigation.jsp"></jsp:include>


<!-- Blog Single Post Section -->

<section id="blog-single-post">

     <div class="container">
          <div class="row">

               <div class="col-md-offset-1 col-md-10 col-sm-12">
                    <div class="blog-single-post-thumb">
     
                         <div class="blog-comment-form">
                              <h3>회원가입</h3>
                                   <form action="/sexy/joinFun.vip" name="joinSubmit" method="post">
                                        <strong>ID</strong><br>
                                        <input type="text" class="form-control" readonly="readonly" placeholder="아이디를 입력하세요" id="idC" name="id" required>
                                        <strong>이름</strong><br>                                        
                                        <input type="text" class="form-control" placeholder="이름을 입력하세요" id="name" name="name" required>
                                        <strong>닉네임</strong><br>
                                        <input type="text" class="form-control" placeholder="닉네임을 입력하세요" id="nickname" name="nickname" required>
                                        <strong>비밀번호</strong><br>
                                        <input type="password" class="form-control" placeholder="비밀번호를 입력하세요" id="password" name="password" required>
                                        <strong>비밀번호 확인</strong><br>
                                        <input type="password" class="form-control" placeholder="비밀번호 확인" id="passwordCheck" name="password2" required>
                                        <font id="chkNotice"></font>
                                        <br><br>
                                        <strong>성별</strong><br>
                                        <label class="form-check-label" for="radio1">
                                        <input type="radio" class="form-check-input" id="radio1" name="gender" value="남자" checked>남
                                           </label>
                                        <label class="form-check-label" for="radio2">
                                        <input type="radio" class="form-check-input" id="radio2" name="gender" value="여자">여
                                            </label>
                                       
                                        <br><br>
                                        <strong>연락처</strong><br>
                                        <input type="text" placeholder="연락처를 입력하세요" name="tel1" id="tels">&nbsp&nbsp-&nbsp&nbsp
                                        <input type="text" placeholder="연락처를 입력하세요" name="tel2" id="tels">&nbsp&nbsp-&nbsp&nbsp
                                        <input type="text" placeholder="연락처를 입력하세요" name="tel3" id="tels">
                                        <input type="hidden" name="tel">
                                        <br><br><br>
                                        <strong>이메일</strong><br>
                                         <input type="text" placeholder="Email" name="email1" id="email1" required>@
                                         <input type="text" placeholder="Email" name="email2" id="email2" required>
                                         <select name="email3">
                                            <option selected="selected" id="dr">직접입력</option>
                                            <option value="naver.com">naver.com</option>
                                            <option value="daum.net">daum.net</option>
                                            <option value="gmail.com">gmail.com</option>
                                            <option value="hotmail.com">hotmail.com</option>
                                            <option value="nate.com">nate.com</option>                                     
                                         </select>
                                         <input type="hidden" name="email">
                                         <br><br>
                                         <strong>주소</strong><br>
                                         
                                        <input type="text" id="sample4_postcode" placeholder="우편번호" readonly="readonly" name="postnum">
                                        <a id="sendPost"><input type="button"  value="우편번호 찾기"></a>
                                        <br>
                                        <input type="text" id="sample4_roadAddress" placeholder="도로명주소" size="50" readonly="readonly" name="roadaddr">                                 
                                        <input type="text" id="sample4_jibunAddress" placeholder="지번주소" size="50" readonly="readonly" name="numaddr">
                                        <br>
                                        <span id="guide" style="color:#999;display:none"></span>
                                        <input type="text" id="sample4_detailAddress" placeholder="상세주소" size="50" name="detailaddr">
                                        <input type="text" id="sample4_extraAddress"  placeholder="참고항목" size="50" readonly="readonly">
					                    <input type="hidden" name="address">
					                     
					                     <br><br>
                                         <strong>생년월일</strong><br>
                                         <input readonly="readonly" name="birthdate" type="text" id="datepicker1">
                                         
                                        <br><br><br><br><br>
                                        <div class="col-md-3 col-sm-4">
                                             <input type="submit" name="send" class="form-control" value="회원가입">
                                        </div>
                                   </form>
                         </div>
                    </div>
          </div>
     </div>
   </div>
</section>

<!-- Footer Section include -->
<jsp:include page="/include/footer.jsp"></jsp:include>


<!-- SCRIPTS -->

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/custom.js"></script>
 <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
 <script type="text/javascript" src="/sexy/js/joinMember.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</body>
</html>