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

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

</head>
<body>

<!-- PRE LOADER -->

<div class="preloader">
     <div class="sk-spinner sk-spinner-wordpress">
          <span class="sk-inner-circle"></span>
     </div>
</div>

<!-- Navigation section  -->

<div class="navbar navbar-default navbar-static-top" role="navigation">
     <div class="container">

          <div class="navbar-header">
               <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
               </button>
               <a href="index.jsp" class="navbar-brand"><i class="fa fa-magnet"></i></a>
          </div>
          <div class="collapse navbar-collapse">
               <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.jsp">Projects</a></li>
                    <li><a href="about.jsp">Our Studio</a></li>
                    <li class="active"><a href="blog.jsp">Blog</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
               </ul>
          </div>

  </div>
</div>

<!-- Blog Single Post Section -->

<section id="blog-single-post">

     <div class="container">
          <div class="row">

               <div class="col-md-offset-1 col-md-10 col-sm-12">
                    <div class="blog-single-post-thumb">
     
                         <div class="blog-comment-form">
                              <h3>회원가입</h3>
                                   <form action="#" name="rfrm" method="post">
                                        <strong>ID</strong><br>
                                        <input type="text" class="form-control" readonly="readonly" placeholder="아이디를 입력하세요" id="idC" name="id" required>
                                        <strong>이름</strong><br>                                        
                                        <input type="text" class="form-control" placeholder="이름을 입력하세요" id="name" name="name" required>
                                        <strong>닉네임</strong><br>
                                        <input type="text" class="form-control" placeholder="닉네임을 입력하세요" id="nickname" name="nickname" required>
                                        <strong>비밀번호</strong><br>
                                        <input type="password" class="form-control" placeholder="비밀번호를 입력하세요" id="password" name="password1" required>
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
                                         <br><br>
                                         <strong>주소</strong><br>
                                         <input type="text" name="post1" class="inputText" size="10"  readonly="readonly" /> - <input type="text" name="post2" class="inputText" size="10"  readonly="readonly"/> <span class="buttonFuc"><a href="#" id="sendPost">우편번호</a></span>
                                         <br>
					                     <input type="text" name="address1" class="inputText" size="50" readonly="readonly" />
					                     <input type="text" name="address2" class="inputText" size="50" placeholder="상세 주소를 입력하세요" />
					                     <input type="hidden" name="address"/>
					                     <br><br>
                                         <strong>생년월일</strong><br>
                                         <input readonly="readonly" name="birthdate" type="text" id="datepicker1">
                                         
                                        <br><br><br><br><br>
                                        <div class="col-md-3 col-sm-4">
                                             <input type="submit" class="form-control" value="회원가입">
                                        </div>
                                   </form>
                         </div>
                    </div>
          </div>
     </div>
   </div>
</section>

<!-- Footer Section -->

<footer>
     <div class="container">
          <div class="row">

               <div class="col-md-3 col-sm-3">
                    <i class="fa fa-magnet"></i>
               </div>

               <div class="col-md-4 col-sm-4">
                    <p>124 Market Street, Suite 3570 San Francisco, CA 3042 United States</p>
               </div>

               <div class="col-md-offset-1 col-md-4 col-sm-offset-1 col-sm-3">
                    <p><a href="mailto:youremail@gmail.com">hello@yourstudio.co</a></p>
                    <p>(+01) 2048937 / 02 203403</p>
               </div>

               <div class="clearfix col-md-12 col-sm-12">
                    <hr>
               </div>

               <div class="col-md-6 col-sm-6">
                    <div class="footer-copyright">
                         <p>© 2016 Magnet Studio | All Rights Reserved.</p>
                    </div>
               </div>

               <div class="col-md-6 col-sm-6">
                    <ul class="social-icon">
                         <li><a href="#" class="fa fa-facebook"></a></li>
                         <li><a href="#" class="fa fa-twitter"></a></li>
                         <li><a href="#" class="fa fa-linkedin"></a></li>
                    </ul>
               </div>
               
          </div>
     </div>
</footer>


<!-- SCRIPTS -->

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/custom.js"></script>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
 <script type="text/javascript" src="/sexy/js/joinMember.js"></script>

</body>
</html>