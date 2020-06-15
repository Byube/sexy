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


<!-- Single Project Section -->

<section id="single-project">
     <div class="container">
          <div class="row">

               <div class="col-md-offset-1 col-md-10 col-sm-12">
                    <h1>Project title here</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <a href="#"><i class="fa fa-long-arrow-right"></i> View Website</a>

                    <div class="col-md-12 col-sm-12">
                         <img src="images/single-project-img.jpg" class="img-responsive" alt="Portfolio">
                    </div>

                    <div class="col-md-6 col-sm-6">
                         <img src="images/portfolio-img2.jpg" class="img-responsive" alt="Portfolio">
                    </div>

                    <div class="col-md-6 col-sm-6">
                         <img src="images/portfolio-img3.jpg" class="img-responsive" alt="Portfolio">
                    </div>

                    <div class="clearfix"></div>

                    <div class="col-md-4 col-sm-4">
                         <h3>Role</h3>
                         <p>Brand Identity</p>
                    </div>

                    <div class="col-md-4 col-sm-4">
                         <h3>Date</h3>
                         <p>December, 2015</p>
                    </div>

                    <div class="col-md-4 col-sm-4">
                         <h3>Agency</h3>
                         <p>Client Name here</p>
                    </div>

                    <div class="col-md-12 col-sm-12 text-center">
                         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                         <strong>James Otto ( Project Manager )..</strong>
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

</body>
</html>