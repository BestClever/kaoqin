<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<jsp:useBean id="xueshenghsgb" scope="page" class="com.action.xueshengAction" />

<script type='text/javascript' src='dwr/interface/loginService.js'></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script type="text/javascript" src="js/popup.js"></script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>ѧ��</title>

<meta name="generator" content="" />
<meta name="author" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script src="qtimages/js/jquery-1.8.3.min.js"></script>
<script src="qtimages/js/jquery.superslide.2.1.js"></script>
<link rel="stylesheet" type="text/css" href="qtimages/css/common.css">
<link rel="stylesheet" type="text/css" href="qtimages/css/common1.css">
<link type="text/css" rel="stylesheet" href="qtimages/css/flexslider.css" />
<link rel="stylesheet" type="text/css" href="qtimages/css/index.css">
<link rel="stylesheet" type="text/css" href="qtimages/css/main.css">
<link href="qtimages/css/index1.css" rel="stylesheet">
<link href="qtimages/css/zzsc.css" rel="stylesheet" type="text/css">
<script src="qtimages/js/hsggundong.js"></script>
</head>

<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'��������',550,250) ;
}
</script> 
<%
	
	
     %>
<body>
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
<%@ include file="sidebufen2.jsp"%>
  <div class="layout bg6">
    <div class="lei_mian">
      <h3><a href="index.action">��ҳ</a> > ѧ��</h3>
    </div>
  </div>
<div style="width:1200px; margin:0 auto;">

	
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%' height=44>ѧ�ţ�</td><td width='39%'>${xuesheng.xuehao}</td><td  rowspan=8 align=center><a href=${xuesheng.zhaopian} target=_blank><img src=${xuesheng.zhaopian} width=228 height=215 border=0></a></td></tr><tr>         <td width='11%' height=44>���룺</td><td width='39%'>******</td></tr><tr>         <td width='11%' height=44>������</td><td width='39%'>${xuesheng.xingming}</td></tr><tr>         <td width='11%' height=44>�Ա�</td><td width='39%'>${xuesheng.xingbie}</td></tr><tr>         <td width='11%' height=44>Ժϵ��</td><td width='39%'>${xuesheng.yuanxi}</td></tr><tr>         <td width='11%' height=44>���֤��</td><td width='39%'>******</td></tr><tr>                  <td width='11%' height=44>��ϵ��ʽ��</td><td width='39%'>${xuesheng.lianxifangshi}</td></tr><tr>         <td width='11%' height=44>��ַ��</td><td width='39%'>${xuesheng.dizhi}</td></tr><tr>                  <td width='11%' height=100  >��飺</td><td width='39%' colspan=2 height=100 >${xuesheng.jianjie}</td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" /><input type=button name=Submit52 value=��ӡ onClick="javascript:window.print()" /> <!--jixaaxnnxiu--></td></tr>
    
  </table>
						  	  
</div>	  
<%@ include file="qtdown.jsp"%>

</body>
</html>

