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

<title>Insert Company</title>

<link rel="stylesheet" href="/sexy/css/bootstrap.min.css">
<link rel="stylesheet" href="/sexy/css/font-awesome.min.css">

<!-- Main css -->
<link rel="stylesheet" href="/sexy/css/style.css">
<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

</head>
<body>
<!-- PRE LOADER include -->
<!-- Navigation section include  -->
<jsp:include page="/include/Navigation.jsp"></jsp:include>

<!-- Blog Section -->

<section id="blog">
        <div class="container">
          <div class="row">

               <div class="col-md-offset-1 col-md-10 col-sm-12">
                    <div class="blog-single-post-thumb">
     
                         <div class="blog-comment-form">
                              <h3>업체추가</h3>
                                   <form action="/sexy/insertCom.vip" name="submit" method="post" enctype="multipart/form-data">
                                        <strong>ID</strong>
                                        <br>
                                        <input type="text" class="form-control" readonly="readonly" placeholder="아이디를 입력하세요" id="cid" name="cid" required>
                                        <strong>비밀번호</strong>
                                        <br>
                                        <input type="password" class="form-control" placeholder="비밀번호를 입력하세요" id="cpassword" name="cpassword" required>
                                        <strong>비밀번호 확인</strong>
                                        <br>
                                        <input type="password" class="form-control" placeholder="비밀번호 확인" id="passwordCheck" name="password2" required>
                                        <font id="chkNotice"></font>
                                        <br>
                                        <strong>업체명</strong><br>
                                        <input type="text" class="form-control" placeholder="업체명을 입력하세요" readonly="readonly" id="cname" name="cname" required>
                                        <strong>연락처</strong><br>
                                        <input type="text" placeholder="연락처를 입력하세요" name="tel1" id="tels">&nbsp&nbsp-&nbsp&nbsp
                                        <input type="text" placeholder="연락처를 입력하세요" name="tel2" id="tels">&nbsp&nbsp-&nbsp&nbsp
                                        <input type="text" placeholder="연락처를 입력하세요" name="tel3" id="tels">
                                        <input type="hidden" id="ctel" name="ctel">
                                        <br><br>
                                        <strong>업체로고</strong><br><br>
                                        <input type="file" name="file">
                                        <br><br><br><br>
                                        <div class="col-md-3 col-sm-4">
                                             <input type="button" class="form-control" name="send" class="form-control" value="업체추가">
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

<script src="/sexy/js/jquery.js"></script>
<script src="/sexy/js/bootstrap.min.js"></script>
<script src="/sexy/js/custom.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script type="text/javascript" src="/sexy/js/insertCom.js"></script>

</body>
</html>