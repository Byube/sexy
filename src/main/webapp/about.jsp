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

<!-- About Section -->

<section id="about">
     <div class="container">
          <div class="row">

               <div class="col-md-offset-1 col-md-10 col-sm-12">
                    <div class="section-title">
                         <h3>about our story</h3>
                         <h2>The creative web & mobile studio and focused on brand identity, web development and social marketing.</h2>
                    </div>

                    <div class="col-md-8 col-sm-12">
                         <img src="images/about-image.jpg" class="img-responsive" alt="About">
                    </div>

                    <div class="col-md-4 col-sm-12">
                         <h1>Magnet Studio</h1>
                         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>
                         <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
                    </div>

                    <div class="clearfix"></div>

                     <hr>

                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>

                    <hr>

                    <div class="col-md-4 col-sm-6">
                         <h3>Web Development</h3>
                         <ul>
                              <li>Online Shopping Site</li>
                              <li>Wordpress CMS</li>
                              <li>Bootstrap themes</li>
                              <li>Web Application</li>
                         </ul>
                    </div>

                    <div class="col-md-4 col-sm-6">
                         <h3>Brand Identity</h3>
                         <ul>
                              <li>Logo Design</li>
                              <li>Personal Branding</li>
                              <li>Flyer Design</li>
                              <li>Creative Direction</li>
                         </ul>
                    </div>

                    <div class="col-md-4 col-sm-6">
                         <h3>Social marketing</h3>
                         <ul>
                              <li>facebook, twitter.</li>
                              <li>Page Maintenance</li>
                              <li>Social media</li>
                         </ul>
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