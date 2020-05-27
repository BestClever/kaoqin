<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>在线留言</title>
<meta name="generator" content="" />
<meta name="author" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script src="qtimages/js/jquery-1.8.3.min.js"></script>
<script src="qtimages/js/jquery.superslide.2.1.js"></script>
<link rel="stylesheet" type="text/css" href="qtimages/css/common.css">
<link rel="stylesheet" type="text/css" href="qtimages/css/common1.css">
<link type="text/css" rel="stylesheet" href="qtimages/css/flexslider.css" />
<link rel="stylesheet" type="text/css" href="qtimages/css/index.css">
<link rel="stylesheet" type="text/css" href="qtimages/css/main.css">
<link href="qtimages/css/index1.css" rel="stylesheet">
<link href="qtimages/css/zzsc.css" rel="stylesheet" type="text/css">
<script src="qtimages/js/hsggundong.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<script language="javascript">
           function go(index)
           {
               document.form123.index.value=index;
               document.form123.action="lyblist.action"
               document.form123.submit();
           }  
       </script>
<body>
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
<%@ include file="sidebufen2.jsp"%>
  <div class="layout bg6">
    <div class="lei_mian">
      <h3><a href="index.jsp">首页</a> > 在线留言</h3>
    </div>
  </div>
<div style="width:1200px; margin:0 auto;">

	  <c:forEach items="${requestScope.page.data}" var="liuyanban" varStatus="sta">
						
                          <table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6EA6C1" class="newsline">
                            <!--DWLayoutTable-->
                            <tr>
                              <td width="85" rowspan="4" align="center" valign="middle" bgcolor="#FFFFFF"><img width='70'height='70' src=img/${liuyanban.xingbie}.gif border=0> </td>
                              <td height="20" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp; &nbsp; 留言于:${liuyanban.addtime} &nbsp;</td>
                            </tr>
                            <tr>
                              <td height="78" align="left" valign="top" bgcolor="#FFFFFF">&nbsp;${liuyanban.neirong}</td>
                            </tr>
                            <tr>
                              <td align="left" valign="middle" bgcolor="#FFFFFF" style="height: 25px">&nbsp; &nbsp;昵称：${liuyanban.cheng} &nbsp; &nbsp;电话${liuyanban.dianhua}&nbsp;&nbsp;邮 箱${liuyanban.youxiang} &nbsp; QQ:${liuyanban.QQ}&nbsp; &nbsp; </td>
                            </tr>
                            <tr>
                              <td align="left" valign="middle" bgcolor="#FFFFFF" style="height: 25px">&nbsp; &nbsp;管理员回复：${liuyanban.huifuneirong}</td>
                            </tr>
                          </table>
                         </c:forEach>
				<%@ include file="hsgfenye.jsp"%> 

</div>	  
<%@ include file="qtdown.jsp"%>
</body> 
</html>