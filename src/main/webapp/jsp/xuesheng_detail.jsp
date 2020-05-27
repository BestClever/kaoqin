<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<%@ page isELIgnored="false" %> 
<jsp:useBean id="xueshenghsgb" scope="page" class="com.action.xueshengAction" />
<html>
  <head>
    <title>学生详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >

  学生详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CBD8AC" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>学号：</td><td width='39%'>${xuesheng.xuehao}</td><td  rowspan=8 align=center><a href=${xuesheng.zhaopian} target=_blank><img src=${xuesheng.zhaopian} width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>密码：</td><td width='39%'>${xuesheng.mima}</td></tr><tr><td width='11%' height=44>姓名：</td><td width='39%'>${xuesheng.xingming}</td></tr><tr><td width='11%' height=44>性别：</td><td width='39%'>${xuesheng.xingbie}</td></tr><tr><td width='11%' height=44>院系：</td><td width='39%'>${xuesheng.yuanxi}</td></tr><tr><td width='11%' height=44>身份证：</td><td width='39%'>${xuesheng.shenfenzheng}</td></tr><tr><td width='11%' height=44>联系方式：</td><td width='39%'>${xuesheng.lianxifangshi}</td></tr><tr><td width='11%' height=44>地址：</td><td width='39%'>${xuesheng.dizhi}</td></tr><tr><td width='11%' height=100  >简介：</td><td width='39%' colspan=2 height=100 >${xuesheng.jianjie}</td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>

