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

<title>InsertProduct</title>

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

<!-- Blog Section -->

<section id="blog">
     
     <div class="container">
          <div class="row">

               <div class="col-md-offset-1 col-md-10 col-sm-12">
                    <div class="blog-single-post-thumb">
     
                         <div class="blog-comment-form">
                              <h3>제품추가</h3>
                                   <form action="/sexy/productGoGo.vip" name="productgogo" method="post" enctype="multipart/form-data">
                                        <input type="hidden" id="cno" name="cno" value="${cno }"/>
                                        <strong>제품명</strong>
                                        <br>
                                        <input type="text" class="form-control" placeholder="제품명을 입력하세요" id="pname" name="pname" required>
                                        <br><br>
                                        
                                        <strong>제품가격</strong>
                                        <br>
                                        <input type="number" class="form-control" placeholder="제품 가격을 입력하세요" id="pprice" name="pprice" required>
                                        <br><br>
                                        
                                        <strong>제품색상을 선택 하세요</strong>
                                        <br>
                                        <div style="background-color: #E7E7E7">
                                        <label class="form-check-label" for="radio1" style="color: red">
                                        <input type="radio" id="radio1" name="pcolor" value="RED"checked>RED
                                        </label>
                                        <label class="form-check-label" for="radio2" style="color: blue">
                                        <input type="radio" id="radio2" name="pcolor" value="BLUE" >BLUE
                                        </label>
                                        <label class="form-check-label" for="radio3" style="color: yellow" >
                                        <input type="radio" id="radio3" name="pcolor" value="YELLOW" >YELLOW
                                        </label>
                                        <label class="form-check-label" for="radio4" style="color: black">
                                        <input type="radio" id="radio4" name="pcolor" value="BLACK" >BLACK
                                        </label>
                                        <label class="form-check-label" for="radio5" style="color: white">
                                        <input type="radio" id="radio5" name="pcolor" value="WHITE" >WHITE
                                        </label>
                                        <label class="form-check-label" for="radio6" style="color: green">
                                        <input type="radio" id="radio6" name="pcolor" value="GREEN" >GREEN
                                        </label>
                                        <label class="form-check-label" for="radio7" style="color: pink">
                                        <input type="radio" id="radio7" name="pcolor" value="PINK" >PINK
                                        </label>
                                        <label class="form-check-label" for="radio8" style="color: purple">
                                        <input type="radio" id="radio8" name="pcolor" value="PURPLE" >PURPLE
                                        </label>
                                        <label class="form-check-label" for="radio9" style="color: orange">
                                        <input type="radio" id="radio9" name="pcolor" value="ORANGE" >ORANGE
                                        </label>
                                        </div>
                                        <br><br>
                                        
                                        <strong>수량</strong><br>
                                        <input type="number" class="form-control" placeholder="제품 수량을 입력하세요" id="pqty" name="pqty" required>
                                        <br><br>
                                                                                
                                        <strong>제품분류</strong><br>
                                        <select name="pcategory" id="pcategory">
                                          <option value="0">선택하세요</option>
                                          <option>아우터/잠바</option>
                                          <option>셔츠/브라우스/탑</option>
                                          <option>드레스/원피스</option>
                                          <option>스커트</option>
                                          <option>팬츠</option>
                                          <option>악세사리</option>
                                          <option>신발</option>                                          
                                        </select>
                                        <br><br>
                                        
                                        
                                        <strong>제품URL</strong><br>
                                        <input type="text" class="form-control" placeholder="제품 URL 입력하세요" id="purl" name="purl" required>                                      
                                        <br><br>
                                        
                                        <strong>제품사진</strong><br><br>
                                        <input type="file" name="file" id="file">
                                        <br><br><br><br>
                                        <div class="col-md-3 col-sm-4">
                                             <input type="button" class="form-control" id="send" name="send" class="form-control" value="제품등록">
                                        </div>
                                   </form>
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
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script type="text/javascript" src="/sexy/js/insertPro.js"></script>

</body>
</html>