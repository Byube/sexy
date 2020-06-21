
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>   

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>업체 아이디 중복 확인</title>
<link href="/sexy/css/common.css" rel="stylesheet" type="text/css" />
<link href="/sexy/css/user.css" rel="stylesheet" type="text/css" />
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript"></script>
<script  src="/sexy/js/insertCom.js" charset="UTF-8"></script>

</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<form action="/sexy/comIdCheckFun.vip" name="ComidFrm" method="post">
<table width="400" height="289"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top" background="/sexy/img/join_pop_bg.gif"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="45" colspan="3"><img src="/sexy/myUpload/comIdCheck.png" width="400" height="45" /></td>
      </tr>
      <tr>
        <td width="50" height="60">&nbsp;</td>
        <td height="60">&nbsp;</td>
        <td width="50">&nbsp;</td>
      </tr>
 <c:choose>
 <c:when test="${check eq null }">
     <tr>
        <td>&nbsp;</td>
        <td height="60" align="center" style="padding: 10 ">
          입력하신 아이디 <strong>${id }</strong>은 이미 사용중인 ID 입니다.
          <p>다른 ID를 검색하여주세요. </p></td>
        <td>&nbsp;</td>
      </tr>  
</c:when>
<c:otherwise>
      <tr>
        <td>&nbsp;</td>
        <td height="60" align="center" style="padding: 10 ">
         입력하신 아이디 <strong>${id }</strong>은 사용가능한 ID 입니다.
           <p id="pid"><a href="#" id="pppphere" name="${id}">여기를 Click하세요</a></p></td>
        <td>&nbsp;</td>
      </tr>  
</c:otherwise>   
</c:choose>    
        <tr>
          <td>&nbsp;</td>
          <td height="40" align="center" bgcolor="F5F5F5"><strong>ID</strong> 입력
            <input type="text" name="id" id="id" class="input" />
            <input id="comId" type="image" src="/sexy/img/btn_confirm_re.gif" width="59" height="18" border="0" align="absmiddle"  /></td>
          <td>&nbsp;</td>
        </tr>
      <tr>
        <td>&nbsp;</td>
        <td height="20">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td></td>
        <td height="1" background="/sexy/img/dotline_2px.gif"></td>
        <td></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
