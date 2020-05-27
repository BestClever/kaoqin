<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>学生缴费管理系统</title>
<meta name="generator" content="" />
<meta name="author" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script src="qtimages/js/jquery-1.8.3.min.js"></script>
<script src="qtimages/js/jquery.superslide.2.1.js"></script>
<link rel="stylesheet" type="text/css" href="qtimages/css/common.css">
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

<div class='layout'><div class='ind_tit'><h2>学生风采</h2></div></div>
<div class='layout'>
    <div class='scrollpic'>
      <div id='mybtns'> <a href='javascript:;' id='right'></a><a href='javascript:;' id='left'></a>  </div>
      <div id='myscroll'>
        <div id='myscrollbox'>
          <ul>
		 <s:iterator value="#request.xueshengznxwList" id="xueshengznxw">
			<li><a href="xsDetail.action?id=<s:property value='#xueshengznxw.id'/>"><img src="<s:property value='#xueshengznxw.zhaopian'/>" width='260' height='270'><span class='intro'><h5><s:property value='#xueshengznxw.yuanxi'/></h5><h2></h2><h3>查看详情</h3></span></a></li>
		  </s:iterator>
          </ul>
        </div>
      </div>
    </div>
</div>


<%@ include file="qtdown.jsp"%>
  
  </body> 
</html>
