<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<%@ page isELIgnored="false" %> 
<jsp:useBean id="jiaofeixinxihsgb" scope="page" class="com.action.jiaofeixinxiAction" />
<html>
  <head>
    <title>缴费信息详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >

  缴费信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CBD8AC" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>编号：</td><td width='39%'>${jiaofeixinxi.bianhao}</td>     <td width='11%'>院系：</td><td width='39%'>${jiaofeixinxi.yuanxi}</td></tr><tr>     <td width='11%'>缴费项目：</td><td width='39%'>${jiaofeixinxi.jiaofeixiangmu}</td>     <td width='11%'>缴费金额：</td><td width='39%'>${jiaofeixinxi.jiaofeijine}</td></tr><tr>     <td width='11%'>日期：</td><td width='39%'>${jiaofeixinxi.riqi}</td>     <td width='11%'>备注：</td><td width='39%'>${jiaofeixinxi.beizhu}</td>     </tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>

