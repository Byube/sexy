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
 <script type="text/javascript" src="/sexy/js/login.js"></script>

</body>
</html>