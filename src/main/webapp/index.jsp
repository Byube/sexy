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



<!-- Home Section -->

<section id="home">
     <div class="container">
          <div class="row">

               <div class="col-md-12 col-sm-12">
                    <h2>We will always find best products for you</h2>
                    <hr>
               </div>

          </div>
     </div>
</section>

<!-- Portfolio Section -->

<section id="portfolio">
     <div class="container">
          <div class="row">

               <div class="col-md-4 col-sm-6">
                    <a href="/sexy/test.vip">
                         <div class="portfolio-thumb">
                              <img src="/sexy/img/1.webp" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>사선웨이스트 크로싱데님PT (이효리 착용)</h3>
                                             <small>NANDA MADE</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-4 col-sm-6">
                    <a href="single-project.jsp">
                         <div class="portfolio-thumb">
                              <img src="/sexy/img/2.webp" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>빌드로고자수 슬림하프T</h3>
                                             <small>NANDA MADE</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-4 col-sm-6">
                    <a href="single-project.jsp">
                         <div class="portfolio-thumb">
                              <img src="/sexy/img/3.webp" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>셔링레이아웃 코튼백리본탑</h3>
                                             <small>NANDA MADE</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-4 col-sm-6">
                    <a href="single-project.jsp">
                         <div class="portfolio-thumb">
                              <img src="images/portfolio-img4.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>Project Name</h3>
                                             <small>Logo Design</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-4 col-sm-6">
                    <a href="single-project.jsp">
                         <div class="portfolio-thumb">
                              <img src="images/portfolio-img5.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>Project Name</h3>
                                             <small>Social marketing</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-4 col-sm-6">
                    <a href="single-project.jsp">
                         <div class="portfolio-thumb">
                              <img src="images/portfolio-img6.jpg" class="img-responsive" alt="Portfolio">
                                   <div class="portfolio-overlay">
                                        <div class="portfolio-item">
                                             <h3>Project Name</h3>
                                             <small>Fyler Design</small>
                                        </div>
                                   </div>
                         </div>
                    </a>
               </div>

               <div class="col-md-12 col-sm-12 text-center">
                    <h3>hello, if you interest working together. just send message <a href="contact.jsp">contact page</a></h3>
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
 <script type="text/javascript" src="/sexy/js/index.js"></script>

</body>
</html>