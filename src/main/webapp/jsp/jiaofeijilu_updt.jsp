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

<script language="javascript">
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
			<form action="jiaofeijiluUpdt.action" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CCCCCC" style="border-collapse:collapse">
						<tr bgcolor="#E7E7E7">
							<td height="20" colspan="2" >修改缴费记录</td>
						</tr>
						<tr ><td width="200">编号：</td><td><input name='bianhao' type='text' id='bianhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">院系：</td><td><input name='yuanxi' type='text' id='yuanxi' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">缴费项目：</td><td><input name='jiaofeixiangmu' type='text' id='jiaofeixiangmu' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">缴费金额：</td><td><input name='jiaofeijine' type='text' id='jiaofeijine' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">学号：</td><td><input name='xuehao' type='text' id='xuehao' onblur='' style='border:solid 1px #000000; color:#666666' value='' /></td></tr>		<tr ><td width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">联系方式：</td><td><input name='lianxifangshi' type='text' id='lianxifangshi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		
		
						<tr align='center'   height="22">
						    <td width="25%"  align="right">&nbsp;
						        
						    </td>
						    <td width="75%"  align="left">
						     <input type="submit" name="Submit5" value="提交" onClick="return checkform();"/>
						       <input type="reset" value="重置"/>&nbsp;<input type="hidden" name="id" value="${requestScope.jiaofeijilu.id}"/>
						    </td>
						</tr>
						<script language="javascript">document.form1.bianhao.value='${jiaofeijilu.bianhao}';</script>	<script language="javascript">document.form1.yuanxi.value='${jiaofeijilu.yuanxi}';</script>	<script language="javascript">document.form1.jiaofeixiangmu.value='${jiaofeijilu.jiaofeixiangmu}';</script>	<script language="javascript">document.form1.jiaofeijine.value='${jiaofeijilu.jiaofeijine}';</script>	<script language="javascript">document.form1.xuehao.value='${jiaofeijilu.xuehao}';</script>	<script language="javascript">document.form1.xingming.value='${jiaofeijilu.xingming}';</script>	<script language="javascript">document.form1.lianxifangshi.value='${jiaofeijilu.lianxifangshi}';</script>	
					 </table>
			</form>
   </body>
</html>




