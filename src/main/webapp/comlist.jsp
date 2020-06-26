<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<title>ComPany MyPage</title>

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


<!-- Blog Single Post Section -->

<section id="blog-single-post">
     <div class="container">
          <div class="row">

               <div class="col-md-offset-1 col-md-10 col-sm-12">
                    <div class="blog-single-post-thumb">
                      
                       <c:forEach var="i" items="${clist}" varStatus="cnt">
                         <div class="blog-post-image">
                              <img src="/sexy/comLogo/${i.cfilename }" class="img-responsive" alt="Blog Image">
                         </div>
                         </c:forEach>
                         <div class="blog-post-title">
                              <h2>Product Check and Modify</h2>
                         </div>
                         <c:forEach var="p" items="${plist }" varStatus="cn">
                         <div class="blog-comment">
                                   <div class="media">
                                        <div class="media-object pull-left">
                                             <img src="/sexy/productImg/${p.pfilename }" class="img-responsive img-circle" alt="Blog Image">
                                        </div>
                                        <div class="media-body">                                             
                                             <table class="table table-bordered">
                                                <thead>
                                                  <tr>
                                                   <th>No.</th>
                                                   <th>제품명</th>
                                                   <th>제품가격</th>
                                                   <th>제품색상</th>
                                                   <th>제품분류</th>                                                   
                                                  </tr>
                                                </thead>
                                                <tbody>
                                                  <tr>
                                                    <td>${cn.count }</td>
                                                    <td>${p.pname }</td>
                                                    <td>${p.pprice }</td>
                                                    <td>${p.pcolor }</td>
                                                    <td>${p.pcategory }</td>                                                 
                                                  </tr>
                                                </tbody>
                                             </table>                                            
                                        </div>
                                   </div>                                   
                         </div>                        
                         </c:forEach>
                         <div class="blog-comment-form">
                              <h3>Leave a Comment</h3>
                                   <form action="#" method="post">
                                        <textarea class="form-control" placeholder="Message" rows="5" name"Your Comments" required></textarea>
                                        <input type="text" class="form-control" placeholder="Name" name="name" required>
                                        <input type="email" class="form-control" placeholder="Email" name="email" required>
                                        <div class="col-md-3 col-sm-4">
                                             <input type="submit" class="form-control" value="Post Your Comment">
                                        </div>
                                   </form>
                         </div>
                         
                         ${sb }
                         
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