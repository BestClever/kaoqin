<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<%@ page isELIgnored="false" %> 
<jsp:useBean id="jiaofeixinxihsgb" scope="page" class="com.action.jiaofeixinxiAction" />


<script type='text/javascript' src='dwr/interface/loginService.js'></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script type="text/javascript" src="js/popup.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<TITLE>添加缴费信息</TITLE>
	    
      
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
			<form action="jiaofeixinxiUpdt.action" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CCCCCC" style="border-collapse:collapse">
						<tr bgcolor="#E7E7E7">
							<td height="20" colspan="2" >修改缴费信息</td>
						</tr>
						<tr ><td width="200">编号：</td><td><input name='bianhao' type='text' id='bianhao' value='<%=connDbBean.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">院系：</td><td><input name='yuanxi' type='text' id='yuanxi' onblur='checkform()' style='border:solid 1px #000000; color:#666666' value='' />&nbsp;*<label id='clabelyuanxi' /></td></tr>		<tr ><td width="200">缴费项目：</td><td><input name='jiaofeixiangmu' type='text' id='jiaofeixiangmu' value='' onblur='checkform()' size='50' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabeljiaofeixiangmu' /></td></tr>		<tr ><td width="200">缴费金额：</td><td><input name='jiaofeijine' type='text' id='jiaofeijine' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabeljiaofeijine' />必需数字型</td></tr>		<tr ><td width="200">日期：</td><td><input name='riqi' type='text' id='riqi' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>		<tr ><td width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		
		
						<tr align='center'   height="22">
						    <td width="25%"  align="right">&nbsp;
						        
						    </td>
						    <td width="75%"  align="left">
						     <input type="submit" name="Submit5" value="提交" onClick="return checkform();"/>
						       <input type="reset" value="重置"/>&nbsp;<input type="hidden" name="id" value="${requestScope.jiaofeixinxi.id}"/>
						    </td>
						</tr>
						<script language="javascript">document.form1.bianhao.value='${jiaofeixinxi.bianhao}';</script>	<script language="javascript">document.form1.yuanxi.value='${jiaofeixinxi.yuanxi}';</script>	<script language="javascript">document.form1.jiaofeixiangmu.value='${jiaofeixinxi.jiaofeixiangmu}';</script>	<script language="javascript">document.form1.jiaofeijine.value='${jiaofeixinxi.jiaofeijine}';</script>	<script language="javascript">document.form1.riqi.value='${jiaofeixinxi.riqi}';</script>	<script language="javascript">document.form1.beizhu.value='${jiaofeixinxi.beizhu}';</script>	
					 </table>
			</form>
   </body>
</html>



<script language=javascript src='js/ajax.js'></script>
<script language=javascript >  
 
 function checkform(){  
 
	var yuanxiobj = document.getElementById("yuanxi"); if(yuanxiobj.value==""){document.getElementById("clabelyuanxi").innerHTML="&nbsp;&nbsp;<font color=red>请输入院系</font>";return false;}else{document.getElementById("clabelyuanxi").innerHTML="  "; } 	var jiaofeixiangmuobj = document.getElementById("jiaofeixiangmu"); if(jiaofeixiangmuobj.value==""){document.getElementById("clabeljiaofeixiangmu").innerHTML="&nbsp;&nbsp;<font color=red>请输入缴费项目</font>";return false;}else{document.getElementById("clabeljiaofeixiangmu").innerHTML="  "; } 	    


return true;   
}   
popheight=450;
</script>  
