<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html >
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
<style type="text/css">
.comlist{
  text-align: center;
}
</style>

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
                         <br><br>
                         <c:forEach var="p" items="${plist }" varStatus="cn">
                         <div class="blog-comment">
                                   <div class="media">
                                        <div class="media-object pull-left">
                                             <img src="/sexy/productImg/${p.pfilename }" class="img-responsive img-circle" alt="Blog Image">
                                        </div>
                                        <div class="media-body">                 
                                        <form action="" method="post">                            
                                             <table class="table table-bordered">
                                                <thead>
                                                  <tr>
                                                   <th class="comlist">No.</th>
                                                   <th class="comlist">제품명</th>
                                                   <th class="comlist">제품가격</th>
                                                   <th class="comlist">제품색상</th>
                                                   <th class="comlist">제품분류</th> 
                                                   <th class="comlist">수정&삭제</th>                                   
                                                  </tr>
                                                </thead>
                                                <tbody>
                                                  <tr lang="${p.pno }">
                                                    <td class="comlist">${cn.count }</td>
                                                    <td class="comlist">${p.pname }</td>
                                                    <td class="comlist">${p.pprice }</td>
                                                    <td class="comlist">${p.pcolor }</td>
                                                    <td class="comlist">${p.pcategory }</td>
                                                    <td class="comlist">
                                                    <button type="button" class="btn btn-info" name="mod" id="${p.pno }">수정</button>
                                                    <button type="button" class="btn btn-danger" name="del" id="${p.pno }">삭제</button>
                                                    <input type="password" placeholder="비밀번호를 입력하세요" id="delpass" name="${p.pno }">                                                   
                                                    </td>                                                 
                                                  </tr>
                                                                                                 
                                                  <tr lang="${p.pno }" style="display: none;">
                                                    <td class="comlist">${cn.count }</td>
                                                    <td class="comlist"><input type="text" value="${p.pname }" id="${p.pno }" name="pname"/></td>
                                                    <td class="comlist"><input type="text" value="${p.pprice }" id="${p.pno }" name="pprice"/></td>
                                                    <td class="comlist"><select name="pcolor" id="${p.pno }">
                                                                        <option value="0">${p.pcolor }</option>
                                                                        <option>RED</option>
                                                                        <option>BLACK</option>
                                                                        <option>WHITE</option>
                                                                        <option>GREEN</option>
                                                                        <option>PINK</option>
                                                                        <option>PURPLE</option>
                                                                        <option>ORANGE</option>                                          
                                                                        </select>
                                                    </td>
                                                    <td class="comlist"><select name="pcategory" id="${p.pno }">
                                                                        <option value="0">선택하세요</option>
                                                                        <option>아우터/잠바</option>
                                                                        <option>셔츠/브라우스/탑</option>
                                                                        <option>드레스/원피스</option>
                                                                        <option>스커트</option>
                                                                        <option>팬츠</option>
                                                                        <option>악세사리</option>
                                                                        <option>신발</option>                                          
                                                                        </select>
                                                    </td>
                                                    <td class="comlist">
                                                    <button type="button" class="btn btn-info" name="mod" id="${p.pno }">수정</button>
                                                    <button type="button" class="btn btn-danger" name="del" id="${p.pno }">삭제</button>
                                                    </td>                                                 
                                                  </tr>
                                                </tbody>
                                             </table> 
                                            </form>                                            
                                        </div>
                                   </div>                                   
                         </div>                        
                         </c:forEach>
                         <div class="blog-comment-form">
                              <h3>Leave a Comment</h3>                                                                           
                                        <input type="text" class="form-control" placeholder="Name" name="name" required>
                                        <input type="email" class="form-control" placeholder="Email" name="email" required>
                                        <div class="col-md-3 col-sm-4">
                                             <input type="button" class="form-control" value="삭제 확인!">
                                        </div>                                   
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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/sexy/js/comlist.js"></script>

</body>
</html>