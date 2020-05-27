<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="jiaofeijiluhsgb" scope="page" class="com.action.jiaofeijiluAction" /> 



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<TITLE>缴费记录查询</TITLE>
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
           function jiaofeijiluDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="jiaofeijiluDel.action?id="+id;
               }
           }
           function jiaofeijiluDetail(id)
           {
                  // window.location.href="jiaofeijiluDetail.action?id="+id;
				   window.open("jiaofeijiluDetail.action?id="+id,"_blank");
           }
           function jiaofeijiluPre(id)
           {
                   window.location.href="jiaofeijiluPre.action?id="+id;
           }
           function jiaofeijiluIssh(id)
           {
                   window.location.href="jiaofeijiluIssh.action?id="+id;
           }
		   function zhifu(id,biao)
           {
                   window.location.href="zhifu/index.jsp?id="+id+"&biao="+biao;
           }
           function jiaofeijiluAdd()
           {
                 var url="jiaofeijiluAdd.jsp";
				 window.location.href=url;
           }
           
           
           function go(index)
           {
               document.form123.index.value=index;
               document.form123.action="jiaofeijiluList2.action"
               document.form123.submit();
           }  
		    function check()
           {
               document.formAdd.submit();
           }
       </script>
	   
	</head>

	<body leftmargin="2" topmargin="9" background='img/allbg.gif' onload="catelogAll()">
	
	<form action="jiaofeijiluList.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#E7E7E7">
							<td height="10" colspan="8" background="img/tbg.gif">&nbsp;&nbsp;</td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    
					      <td  bgcolor="#FFFFFF" align="left">
						  搜索:  编号：<input name="bianhao" type="text" id="bianhao" style='border:solid 1px #000000; color:#666666' size="12" />  院系：<input name="yuanxi" type="text" id="yuanxi" style='border:solid 1px #000000; color:#666666' size="12" />  缴费项目：<input name="jiaofeixiangmu" type="text" id="jiaofeixiangmu" style='border:solid 1px #000000; color:#666666' size="12" />  学号：<input name="xuehao" type="text" id="xuehao" style='border:solid 1px #000000; color:#666666' size="12" />
					        <input name="button" type="button" onclick="check()" value="提交"/>
					      
                             </td>
						</tr>
					 </table>
	</form>
			
			<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
				
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="50">序号</td>
					<td >编号</td>
    <td >院系</td>
    <td >缴费项目</td>
    <td >缴费金额</td>
    <td >学号</td>
    <td >姓名</td>
    <td >联系方式</td>
    <td  width='80' align='center'>是否支付</td>
    
					
					<td width="140">添加时间</td>
					<td width="140">操作</td>
		        </tr>
				<%
					int i=0;
				%>
				<c:forEach items="${requestScope.page.data}" var="jiaofeijilu" varStatus="sta">
				<%
					i++;
				%>
				<tr align='center' bgcolor="#FFFFFF" onMouseOver="this.style.backgroundColor='#EDDCC2'" onMouseOut="this.style.backgroundColor='#ffffff'" height="22">
					<td><%=i%></td>
					<td>${jiaofeijilu.bianhao}</td>
    <td>${jiaofeijilu.yuanxi}</td>
    <td>${jiaofeijilu.jiaofeixiangmu}</td>
    <td>${jiaofeijilu.jiaofeijine}</td>
    <td>${jiaofeijilu.xuehao}</td>
    <td>${jiaofeijilu.xingming}</td>
    <td>${jiaofeijilu.lianxifangshi}</td>
    <td align='center'>${jiaofeijilu.iszf} <c:if test="${jiaofeijilu.iszf=='否'}"><input type="button" value="支付" onclick="zhifu(${jiaofeijilu.id},'t_jiaofeijilu')"/></c:if> </td>
    
					
					<td>${jiaofeijilu.addtime}</td>
					<td  align="center">
						 
						    
						 	 <input type="button" value="详细" onclick="jiaofeijiluDetail(${jiaofeijilu.id})"/>
					</td>
				</tr>
				</c:forEach>
			</table>
			
			
			
			<%@ include file="hsgfenye.jsp"%> 
			
			
	</body>
</html>
