<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>


<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=jiaofeixinxi.xls");
%>
<html>
  <head>
    <title>�ɷ���Ϣ</title>
  </head>

  <body >

<table width="100%" border="1" >  
  <tr>
    <td width="30" align="center" >���</td>
    <td>���</td>    <td>Ժϵ</td>    <td>�ɷ���Ŀ</td>    <td>�ɷѽ��</td>    <td>����</td>    <td>��ע</td>    
	
    
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

