<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<%@ page isELIgnored="false" %> 
<jsp:useBean id="jiaofeijiluhsgb" scope="page" class="com.action.jiaofeijiluAction" />

<script type='text/javascript' src='dwr/interface/loginService.js'></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script type="text/javascript" src="js/popup.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<TITLE>添加缴费记录</TITLE>
	    
      
        <LINK href="css.css" type=text/css rel=stylesheet>
       
	</head>
<%
  String id="";
id = request.getParameter("id"); 
String bianhao="";String yuanxi="";String jiaofeixiangmu="";String jiaofeijine="";
if(id!=null){
	List jiaofeijiluListlbdq = jiaofeijiluhsgb.getLbdqJiaofeijilu(Integer.parseInt(id),4);
	bianhao=(String)jiaofeijiluListlbdq.get(0);  	yuanxi=(String)jiaofeijiluListlbdq.get(1);  	jiaofeixiangmu=(String)jiaofeijiluListlbdq.get(2);  	jiaofeijine=(String)jiaofeijiluListlbdq.get(3);  	

} 
   %>
<script language="javascript">

function gows()
{
	document.location.href="jiaofeijilu_add.jsp?id=<%=id%>";
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
</script>
	<body>
			<form action="jiaofeijiluAdd.action" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CCCCCC" style="border-collapse:collapse">
						<tr bgcolor="#E7E7E7">
							<td height="20" colspan="2" >添加缴费记录<input name="addtime" type="hidden" id="addtime" value="<%=connDbBean.gettime()%>" /></td>
						</tr>
						<tr ><td width="200">编号：</td><td><input name='bianhao' type='text' id='bianhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">院系：</td><td><input name='yuanxi' type='text' id='yuanxi' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">缴费项目：</td><td><input name='jiaofeixiangmu' type='text' id='jiaofeixiangmu' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">缴费金额：</td><td><input name='jiaofeijine' type='text' id='jiaofeijine' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">学号：</td><td><input name='xuehao' type='text' id='xuehao' onblur='' style='border:solid 1px #000000; color:#666666' value='' /></td></tr>		<tr ><td width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">联系方式：</td><td><input name='lianxifangshi' type='text' id='lianxifangshi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		
		
						<tr align='center'   height="22">
						    <td width="25%"  align="right">&nbsp;
						        
						    </td>
						    <td width="75%"  align="left">
						     <input type="submit" name="Submit5" value="提交" onClick="return checkform();"/>
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
						<script language="javascript">document.form1.bianhao.value='<%=bianhao%>';document.form1.bianhao.setAttribute("readOnly",'true');</script>		<script language="javascript">document.form1.yuanxi.value='<%=yuanxi%>';document.form1.yuanxi.setAttribute("readOnly",'true');</script>		<script language="javascript">document.form1.jiaofeixiangmu.value='<%=jiaofeixiangmu%>';document.form1.jiaofeixiangmu.setAttribute("readOnly",'true');</script>		<script language="javascript">document.form1.jiaofeijine.value='<%=jiaofeijine%>';document.form1.jiaofeijine.setAttribute("readOnly",'true');</script>		<script language="javascript">document.form1.xuehao.value='<%=request.getSession().getAttribute("username")%>';document.form1.xuehao.setAttribute("readOnly",'true');</script>						<script language="javascript">document.form1.xingming.value='${sessionScope.userxinxi.xingming}';document.form1.xingming.setAttribute("readOnly",'true');</script>						<script language="javascript">document.form1.lianxifangshi.value='${sessionScope.userxinxi.lianxifangshi}';document.form1.lianxifangshi.setAttribute("readOnly",'true');</script>						
					 </table>
			</form>
   </body>
</html>




