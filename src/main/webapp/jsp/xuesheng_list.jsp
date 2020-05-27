<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("gb2312");%>
<jsp:useBean id="xueshenghsgb" scope="page" class="com.action.xueshengAction" /> 



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<TITLE>学生查询</TITLE>
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
           function xueshengDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="xueshengDel.action?id="+id;
               }
           }
           
		   function xueshengDetail(id)
           {
                  // window.location.href="xueshengDetail.action?id="+id;
				   window.open("xsDetail.action?id="+id,"_blank");
           }
           function xueshengPre(id)
           {
                   window.location.href="xueshengPre.action?id="+id;
           }
		   function xueshengPrelb(id)
           {
                   window.location.href="xueshengPrelb.action?id="+id;
           }
           function xueshengIssh(id)
           {
                   window.location.href="xueshengIssh.action?id="+id;
           }
           function xueshengAdd()
           {
                 var url="xueshengAdd.jsp";
				 window.location.href=url;
           }
           
           
           function go(index)
           {
               document.form123.index.value=index;
               document.form123.action="xueshengList.action"
               document.form123.submit();
           }  
		    function check()
           {
               document.formAdd.submit();
           }
       </script>
	   
	</head>

	<body leftmargin="2" topmargin="9" background='img/allbg.gif' onload="catelogAll()">
	
	<form action="xueshengList.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#E7E7E7">
							<td height="10" colspan="8" background="img/tbg.gif">所有学生列表</td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    
					      <td  bgcolor="#FFFFFF" align="left">
						  搜索:  学号：<input name="xuehao" type="text" id="xuehao" style='border:solid 1px #000000; color:#666666' size="12" />  姓名：<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  院系：<input name="yuanxi" type="text" id="yuanxi" style='border:solid 1px #000000; color:#666666' size="12" />  联系方式：<input name="lianxifangshi" type="text" id="lianxifangshi" style='border:solid 1px #000000; color:#666666' size="12" />
					        <input name="button" type="button" onclick="check()" value="查询"/></td>
						</tr>
					 </table>
	</form>
			
			<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
				
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="50">序号</td>
					<td >学号</td>
    <td >密码</td>
    <td >姓名</td>
    <td  width='40' align='center'>性别</td>
    <td >院系</td>
    <td >身份证</td>
    <td  width='90' align='center'>照片</td>
    <td >联系方式</td>
    <td >地址</td>
    
    
					
					<td width="140">添加时间</td>
					<td width="140">操作</td>
		        </tr>
				<%
					int i=0;
				%>
				<c:forEach items="${requestScope.page.data}" var="xuesheng" varStatus="sta">
				<%
					i++;
				%>
				<tr align='center' bgcolor="#FFFFFF" onMouseOver="this.style.backgroundColor='#EDDCC2'" onMouseOut="this.style.backgroundColor='#ffffff'" height="22">
					<td><%=i%></td>
					<td>${xuesheng.xuehao}</td>
    <td>${xuesheng.mima}</td>
    <td>${xuesheng.xingming}</td>
    <td align='center'>${xuesheng.xingbie}</td>
    <td>${xuesheng.yuanxi}</td>
    <td>${xuesheng.shenfenzheng}</td>
    <td width='90' align='center'><a href='${xuesheng.zhaopian}' target='_blank'><img src='${xuesheng.zhaopian}' width=88 height=99 border=0 /></a></td>
    <td>${xuesheng.lianxifangshi}</td>
    <td>${xuesheng.dizhi}</td>
    
    
					
					<td>${xuesheng.addtime}</td>
					<td  align="center" width="200px">
						     <input type="button" value="删除" onclick="xueshengDel(${xuesheng.id})"/>
						     <input type="button" value="编辑" onclick="xueshengPre(${xuesheng.id})"/>
							 
							 <input type="button" value="详细" onclick="xueshengDetail(${xuesheng.id})"/>
					</td>
				</tr>
				</c:forEach>
			</table>
			
			
			
			<%@ include file="hsgfenye.jsp"%> 
			
			
	</body>
</html>
