<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<%request.setCharacterEncoding("utf-8");%>
 <%
  String lb=request.getParameter("lb");
  //String lb=new String(request.getParameter("lb").getBytes("8859_1"));
   %>
   
   <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><%=lb%></title>
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
<body>
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
<%@ include file="sidebufen2.jsp"%>
  <div class="layout bg6">
    <div class="lei_mian">
      <h3><a href="index.action">首页</a> > <%=lb%></h3>
    </div>
  </div>
<div style="width:1200px; margin:0 auto;">

	 <table width="97%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#B8D8E8" class="newsline" style="border-collapse:collapse">
                            
                            <tr>
                              <td height="104"><%=connDbBean.readzd("t_dx","content","leibie",lb)%></td>
                            </tr>
                            <tr>
                              <td align="right"><input type="button" onClick="javaScript:history.back();" value="返回" /></td>
                            </tr>
                          </table>
						  	  
</div>	  
<%@ include file="qtdown.jsp"%>
</body> 
</html>