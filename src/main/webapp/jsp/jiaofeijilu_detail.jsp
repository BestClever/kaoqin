<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<%@ page isELIgnored="false" %> 
<jsp:useBean id="jiaofeijiluhsgb" scope="page" class="com.action.jiaofeijiluAction" />
<html>
  <head>
    <title>缴费记录详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >

  缴费记录详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CBD8AC" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>编号：</td><td width='39%'>${jiaofeijilu.bianhao}</td>     <td width='11%'>院系：</td><td width='39%'>${jiaofeijilu.yuanxi}</td></tr><tr>     <td width='11%'>缴费项目：</td><td width='39%'>${jiaofeijilu.jiaofeixiangmu}</td>     <td width='11%'>缴费金额：</td><td width='39%'>${jiaofeijilu.jiaofeijine}</td></tr><tr>     <td width='11%'>学号：</td><td width='39%'>${jiaofeijilu.xuehao}</td>     <td width='11%'>姓名：</td><td width='39%'>${jiaofeijilu.xingming}</td></tr><tr>     <td width='11%'>联系方式：</td><td width='39%'>${jiaofeijilu.lianxifangshi}</td>     <td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>

