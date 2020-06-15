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

<title>로그인</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
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
                    <div class="section-title">
                         <h3>Login</h3>
                         <h2>로그인 하시고 이용하세요</h2>
                    </div>

    <form id="login" name="login" method ="post" action="/sexy/loginFun.vip">
    <article class="">
		
		<div class="col-sm-6 col-md-offset-3">
			
				<div class="form-group">
					<label for="inputName">ID</label> <input type="text"
						class="form-control" name="id" id="id" placeholder="아이디를 입력해 주세요">
				</div>
				
				<div class="form-group">
					<label for="inputPassword">비밀번호</label> <input type="password" 
					class="form-control" name="password" id="password" placeholder="비밀번호를 입력해주세요">
				</div>
				
	   		
				<br>
				
				<div class="form-group text-center">
					<button type="button" id="loginsubmit" class="btn btn-primary">
						로그인
					</button>
					<button type="button" id="signUp" class="btn btn-warning" onclick="location.href='joinMemBer.jsp'" >
						회원가입
					</button>
				</div>
			
		</div>

	</article>
    </form>                    
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
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
 <script type="text/javascript" src="/sexy/js/login.js"></script>

</body>
</html>