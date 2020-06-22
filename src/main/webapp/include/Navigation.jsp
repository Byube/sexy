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

<title>Navigation</title>

<link rel="stylesheet" href="/sexy/css/bootstrap.min.css">
<link rel="stylesheet" href="/sexy/css/font-awesome.min.css">

<!-- Main css -->
<link rel="stylesheet" href="/sexy/css/style.css">
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
          <div class="collapse navbar-collapse">
               <ul class="nav navbar-nav navbar-right">
                 <c:choose>
                   <c:when test="${id eq null and cid eq null}">
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="choicejoin.jsp">Sign Up</a></li>
                   </c:when>
                   <c:otherwise>
                    <li><a href="/sexy/logoutFun.vip">Logout</a></li>
                   </c:otherwise>
                 </c:choose>           
                    <li><a href="#">Cart</a></li>
                 <c:if test="${cid ne null}">
                    <li><a href="/sexy/insertProgogo.vip">Add Product</a></li>
                 </c:if>
                   
               </ul>
          </div>

     </div>
       
       
       
       
     <div class="container">

          <div class="navbar-header">
               <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
               </button>
               <a href="index.jsp" class="navbar-brand">
               	<!-- <i class="fa fa-magnet"></i> -->
               	<img src="/sexy/img/sharplogo.png" width="80px" heigth="80px">
               </a>
          </div>
          <div class="collapse navbar-collapse">
               <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="index.jsp">Main</a></li>
                    <li><a href="/sexy/prolist.vip">List</a></li>
                    <li><a href="about.jsp">Our Studio</a></li>
                    <li><a href="blog.jsp">Blog</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
               </ul>
          </div>

     </div>
</div>

<!-- SCRIPTS -->
<script src="/sexy/js/jquery.js"></script>
<script src="/sexy/js/bootstrap.min.js"></script>
<script src="/sexy/js/custom.js"></script>
</body>
</html>