<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<%@ page isELIgnored="false" %>
<jsp:useBean id="jiaofeixinxihsgb1234" scope="page" class="com.action.paymentProjectAction" />

<script type='text/javascript' src='dwr/interface/loginService.js'></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script type="text/javascript" src="js/popup.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<TITLE>添加缴费项目</TITLE>
	    
      
        <LINK href="css.css" type=text/css rel=stylesheet>
       
	</head>
<%
  String id="";
id = request.getParameter("id"); 


if(id!=null){
	List jiaofeijiluListlbdq = jiaofeixinxihsgb1234.getaymentProject(Integer.parseInt(id));


} 
   %>
<script language="javascript">

function gows()
{
	<%--document.location.href="jiaofeijilu_add.jsp?id=<%=id%>";--%>
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
function submit() {
	window.location.href="aymentProjectAdd.action?paymentProjectName="+'1';

}
</script>
	<body>
			<form action="aymentProjectAdd.action" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CCCCCC" style="border-collapse:collapse">
						<tr bgcolor="#E7E7E7">
							<td height="20" colspan="2" >添加缴费记录<input name="addtime" type="hidden" id="addtime" value="<%=connDbBean.gettime()%>" /></td>
						</tr>
						<tr ><td width="200">缴费项目：</td><td><input name='paymentProjectName' type='text' id='paymentProjectName' value='' onblur='' style='border:solid 1px #000000; color:#666666'   /></td></tr>

		
		
						<tr align='center'   height="22">
						    <td width="25%"  align="right">&nbsp;
						        
						    </td>
						    <td width="75%"  align="left">
								<input type="submit" name="Submit5" value="提交" onClick="return checkform();"/>
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
<%--						<script language="javascript">document.form1.bianhao.value='<%=bianhao%>';document.form1.bianhao.setAttribute("readOnly",'true');</script>--%>
<%--		<script language="javascript">document.form1.yuanxi.value='<%=yuanxi%>';document.form1.yuanxi.setAttribute("readOnly",'true');</script>--%>
					 </table>
			</form>
   </body>
</html>




