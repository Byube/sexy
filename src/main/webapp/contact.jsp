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


<!-- Blog Section -->

<section id="blog">
     <div class="container">
          <div class="row">

               <div class="col-md-offset-1 col-md-10 col-sm-12">
                    <div class="section-title">
                         <h3>lastest Blogs</h3>
                         <h2>The creative web & mobile studio and focused on brand identity, web development and social marketing.</h2>
                    </div>

                    <div class="blog-post-thumb">
                         <div class="blog-post-image">
                              <a href="single-post.jsp">
                                   <img src="images/blog-image1.jpg" class="img-responsive" alt="Blog Image">
                              </a>
                         </div>
                         <div class="blog-post-title">
                              <h3><a href="single-post.jsp">We Help You Create Perfect Modern Design</a></h3>
                         </div>
                         <div class="blog-post-format">
                              <span><a href="#"><img src="images/author-image1.jpg" class="img-responsive img-circle"> Jen Lopez</a></span>
                              <span><i class="fa fa-date"></i> Jan 30, 2016</span>
                              <span><a href="#"><i class="fa fa-comment-o"></i> 124 Comments</a></span>
                         </div>
                         <div class="blog-post-des">
                              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                              <a href="single-post.jsp" class="btn btn-default">Continue Reading</a>
                         </div>
                    </div>

                    <div class="blog-post-thumb">
                         <div class="blog-post-image">
                              <a href="single-post.jsp">
                                   <img src="images/blog-image2.jpg" class="img-responsive" alt="Blog Image">
                              </a>
                         </div>
                         <div class="blog-post-title">
                              <h3><a href="single-post.jsp">When do you marry with someone you love in life?</a></h3>
                         </div>
                         <div class="blog-post-format">
                              <span><a href="#"><img src="images/author-image2.jpg" class="img-responsive img-circle"> Leo Dennis</a></span>
                              <span><i class="fa fa-date"></i> November 22, 2016</span>
                              <span><a href="#"><i class="fa fa-comment-o"></i> 23 Comments</a></span>
                         </div>
                         <div class="blog-post-des">
                              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                              <a href="single-post.jsp" class="btn btn-default">Continue Reading</a>
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

</body>
</html>