<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<jsp:useBean id="xueshenghsgb" scope="page" class="com.action.xueshengAction" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type='text/javascript' src='dwr/interface/loginService.js'></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script type="text/javascript" src="js/popup.js"></script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>学生</title>

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
</head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
        <script language="javascript">
		  
             function check()
           {
               document.formssearch.submit();
           }
           
         
           
           function go(index)
           {
               document.form123.index.value=index;
               document.form123.action="xsList.action"
               document.form123.submit();
           }  
		   
       </script>
<%

%>

<body>
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
<%@ include file="sidebufen2.jsp"%>
  <div class="layout bg6">
    <div class="lei_mian">
      <h3><a href="index.action">首页</a> > 学生</h3>
    </div>
  </div>
<div style="width:1200px; margin:0 auto;">

	


<form action="xsList.action" name="formssearch" method="post" style="width:100%">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#E7E7E7">
							<td height="10" colspan="8" background="img/tbg.gif">&nbsp;&nbsp;</td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    
					      <td  bgcolor="#FFFFFF" align="left">
						 搜索:  学号：<input name="xuehao" type="text" id="xuehao" style='border:solid 1px #000000; color:#666666' size="12" />  姓名：<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  院系：<input name="yuanxi" type="text" id="yuanxi" style='border:solid 1px #000000; color:#666666' size="12" />  联系方式：<input name="lianxifangshi" type="text" id="lianxifangshi" style='border:solid 1px #000000; color:#666666' size="12" />
					        <input name="button" type="button" onClick="check()" value="提交"/> <input type="button" name="Submit2" value="切换视图"  onClick="javascript:location.href='xsListtp.action';" />
					      
                          </td>
						</tr>
					 </table>
	</form>
	
<br />
<table width="98%" border="0"  align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse" class="newsline">
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>学号</td>    <td bgcolor='#CCFFFF'>密码</td>    <td bgcolor='#CCFFFF'>姓名</td>    <td bgcolor='#CCFFFF' width='40' align='center'>性别</td>    <td bgcolor='#CCFFFF'>院系</td>    <td bgcolor='#CCFFFF'>身份证</td>    <td bgcolor='#CCFFFF' width='90' align='center'>照片</td>    <td bgcolor='#CCFFFF'>联系方式</td>    <td bgcolor='#CCFFFF'>地址</td>        
   
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  
                     <%
					int i=0;
				%>
				<c:forEach items="${requestScope.page.data}" var="xuesheng" varStatus="sta">
				<%
					i++;
				%>
  <tr onMouseOver="this.style.backgroundColor='#EDDCC2'" onMouseOut="this.style.backgroundColor='#ffffff'">
    <td  align="center"><%=i+1 %></td>
    <td>${xuesheng.xuehao}</td>    <td>******</td>    <td>${xuesheng.xingming}</td>    <td align='center'>${xuesheng.xingbie}</td>    <td>${xuesheng.yuanxi}</td>    <td>******</td>    <td width='90'><a href='${xuesheng.zhaopian}' target='_blank'><img src='${xuesheng.zhaopian}' width=88 height=99 border=0 /></a></td>    <td>${xuesheng.lianxifangshi}</td>    <td>${xuesheng.dizhi}</td>        
	
    <td  align="center"><a href="xsDetail.action?id=${xuesheng.id}">详细</a></td>
  </tr>
  </c:forEach>
   
</table>
<br>

<%@ include file="hsgfenye.jsp"%> 




						  	  
</div>	  
<%@ include file="qtdown.jsp"%>

</body>
</html>
