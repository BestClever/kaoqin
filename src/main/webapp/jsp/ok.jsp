<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="jiaofeixinxihsgb1234" scope="page" class="com.action.paymentProjectAction" />



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<TITLE>操作成功</TITLE>
	<LINK href="css.css" type=text/css rel=stylesheet />
	
		
		<script type='text/javascript' src='dwr/interface/loginService.js'></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>

	   
	</head>

	<body leftmargin="2" topmargin="9" background='img/allbg.gif' onload="catelogAll()">

	<center>
		操作成功！<p>

	</center>

			
			
			
<%--			<%@ include file="hsgfenye.jsp"%> --%>
			
			
	</body>
</html>
