<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="jiaofeixinxihsgb1234" scope="page" class="com.action.paymentProjectAction" />



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<TITLE>缴费项目管理</TITLE>
	<LINK href="css.css" type=text/css rel=stylesheet />
	
		
		<script type='text/javascript' src='dwr/interface/loginService.js'></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
        <script language="javascript">
		   function catelogAll()
           {
                   document.getElementById("indicator").style.display="block";
                   loginService.catelogAll(callback);

           }
           function callback(data)
           {
               document.getElementById("indicator").style.display="none";
               DWRUtil.addOptions("catelog_id",data,"id","name");
           }
           function jiaofeixinxiDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="paymentProjectDel.action?id="+id;
               }
           }
           // // function jiaofeixinxiDetail(id)
           // // {
           // //        // window.location.href="jiaofeixinxiDetail.action?id="+id;
			// // 	   window.open("jiaofeixinxiDetail.action?id="+id,"_blank");
           // // }
           // function jiaofeixinxiPre(id)
           // {
           //         window.location.href="jiaofeixinxiPre.action?id="+id;
           // }
           // function jiaofeixinxiIssh(id)
           // {
           //         window.location.href="jiaofeixinxiIssh.action?id="+id;
           // }
		   // function zhifu(id,biao)
           // {
           //         window.location.href="zhifu/index.jsp?id="+id+"&biao="+biao;
           // }
           // function jiaofeixinxiAdd()
           // {
           //       var url="jiaofeixinxiAdd.jsp";
			// 	 window.location.href=url;
           // }
           //
           
           function go(index)
           {
			   document.form123.action="PaymentProjectList.action"
			   document.form123.index.value=index;
               document.form123.submit();
           }  
		    function check()
           {
               document.formAdd.submit();
           }
       </script>
	   
	</head>

	<body leftmargin="2" topmargin="9" background='img/allbg.gif' onload="catelogAll()">
	<form action="jiaofeixinxiList.action" name="formAdd" method="post">
		<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
			<tr bgcolor="#E7E7E7">
				<td height="10" colspan="8" background="img/tbg.gif"></td>
			</tr>
			<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">

				<td  bgcolor="#FFFFFF" align="left">
					<input type=button name=Submit54 value=新增 onClick="javascript:location.href='project_add.jsp'" /></td>
			</tr>
		</table>
	</form>

			<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
				
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="50">序号</td>
					<td width="140" >缴费项目</td>
					<td width="140">操作</td>
		        </tr>
				<%
					int i=0;
				%>
				<c:forEach items="${requestScope.page.data}" var="pd" varStatus="sta">
				<%i++;%>
				<tr align='center' bgcolor="#FFFFFF" onMouseOver="this.style.backgroundColor='#EDDCC2'" onMouseOut="this.style.backgroundColor='#ffffff'" height="22">
					<td><%=i%></td>
					<td>${pd.paymentProjectName}</td>
					<td  align="center">
						<input type="button" value="编辑" onClick="javascript:location.href='project_add.jsp'"/>
						<input type="button" value="删除" onclick="jiaofeixinxiDel(${pd.pid})"/>
						  

					</td>
				</tr>
				</c:forEach>
			</table>
			
			
			
			<%@ include file="hsgfenye.jsp"%> 
			
			
	</body>
</html>
