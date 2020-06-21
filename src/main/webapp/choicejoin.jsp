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

<title>Magnet - Minimal Portfolio Template</title>

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


<!-- Single Project Section -->

<section id="single-project">
     <div class="container">
          <div class="row">

               <div class="col-md-offset-1 col-md-10 col-sm-12">
                    <h1>회원가입 선택 하세요</h1>
                    

                    <div class="col-md-6 col-sm-6">
                         <a href="joinMemBer.jsp"><img src="/sexy/images/client.jpg" class="img-responsive" alt="Portfolio"></a>
                         <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>Client</h3>
                                             <small>member</small>
                                        </div>
                         </div>
                    </div>

                    <div class="col-md-6 col-sm-6">
                         <a href="insertcompany.jsp"><img src="/sexy/images/admin.jpg" class="img-responsive" alt="Portfolio"></a>
                         <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>Admin</h3>
                                             <small>company</small>
                                        </div>
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

</body>
</html>