<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>


<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=jiaofeixinxi.xls");
%>
<html>
  <head>
    <title>缴费信息</title>
  </head>

  <body >

<table width="100%" border="1" >  
  <tr>
    <td width="30" align="center" >序号</td>
    <td>编号</td>    <td>院系</td>    <td>缴费项目</td>    <td>缴费金额</td>    <td>日期</td>    <td>备注</td>    
	
    
  </tr>
   <%
			String sql="select * from t_jiaofeixinxi order by id desc";
int i=0;
							
						
			ResultSet RS_result=connDbBean.executeQuery(sql);
while(RS_result.next()){
				
						
						
					

		
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td><%=RS_result.getString("bianhao") %></td>    <td><%=RS_result.getString("yuanxi") %></td>    <td><%=RS_result.getString("jiaofeixiangmu") %></td>    <td><%=RS_result.getString("jiaofeijine") %></td>    <td><%=RS_result.getString("riqi") %></td>    <td><%=RS_result.getString("beizhu") %></td>    
	

   
  </tr>
  	<%
  }
   %>
   
</table>
<br>
  </body>
</html>

