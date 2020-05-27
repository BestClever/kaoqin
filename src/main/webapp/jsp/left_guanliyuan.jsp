﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>左侧导航</title>
<head>
<link rel="stylesheet" type="text/css" href="images/index.css">
<style type="text/css">
body{margin:0;padding:0;overflow-x:hidden;}
html, body{height:100%;}
img{border:none;}
*{font-family:'微软雅黑';font-size:12px;color:#626262;}
dl,dt,dd{display:block;margin:0;}
a{text-decoration:none;}

#bg{background-image:url(images/content/dotted.png);}
.container{width:100%;height:100%;margin:auto;}

/*left*/
.leftsidebar_box{width:160px;height:auto !important;overflow:visible !important;position:fixed;height:100% !important;background-color:#339999;}
.line{height:2px;width:100%;background-image:url(images/left/line_bg.png);background-repeat:repeat-x;}
.leftsidebar_box dt{padding-left:40px;padding-right:10px;background-repeat:no-repeat;background-position:10px center;color:#f5f5f5;font-size:14px;position:relative;line-height:48px;cursor:pointer;}
.leftsidebar_box dd{background-color:#339999;padding-left:40px;}
.leftsidebar_box dd a{color:#f5f5f5;line-height:20px;}
.leftsidebar_box dt img{position:absolute;right:10px;top:20px;}
.system_log dt{background-image:url(images/left/system.png)}
.custom dt{background-image:url(images/left/custom.png)}
.channel dt{background-image:url(images/left/channel.png)}
.app dt{background-image:url(images/left/app.png)}
.cloud dt{background-image:url(images/left/cloud.png)}
.syetem_management dt{background-image:url(images/left/syetem_management.png)}
.source dt{background-image:url(images/left/source.png)}
.statistics dt{background-image:url(images/left/statistics.png)}
.leftsidebar_box dl dd:last-child{padding-bottom:10px;}
</style>
</head>
<body id="bg">
<div class="container">
	<div class="leftsidebar_box">
	
<dl class="custom">
			<dt onClick="changeImage()">系统用户管理<img src="images/left/select_xl01.png"></dt>
			<dd><a href="allusersList.action" target="hsgmain">管理员用户</a></dd>
<dd><a href="mod.jsp" target="hsgmain">修改密码</a></dd>

		</dl>
<dl class="custom">
			<dt onClick="changeImage()">新闻数据管理<img src="images/left/select_xl01.png"></dt>
			<dd><a href="xinwentongzhi_add.jsp?lb=站内新闻" target="hsgmain">站内新闻添加</a></dd>
<dd><a href="xinwentongzhiList.action?lb=站内新闻" target="hsgmain">站内新闻查询</a></dd>


		</dl>



<dl class="custom">
			<dt onClick="changeImage()">学生管理<img src="images/left/select_xl01.png"></dt>
			<dd><a href="xuesheng_add.jsp" target="hsgmain">学生添加</a></dd>
<dd><a href="xueshengList.action" target="hsgmain">学生查询</a></dd>

		</dl>
<dl class="custom">
			<dt onClick="changeImage()">缴费信息管理<img src="images/left/select_xl01.png"></dt>
			<dd><a href="jiaofeixinxi_add.jsp" target="hsgmain">缴费信息添加</a></dd>
			<dd><a href="jiaofeixinxiList.action" target="hsgmain">缴费信息查询</a></dd>
			<dd><a href="jiaofeixinxiList2.action" target="hsgmain">缴费项目管理</a></dd>

		</dl>
<dl class="custom">
			<dt onClick="changeImage()">缴费记录管理<img src="images/left/select_xl01.png"></dt>
			<dd><a href="jiaofeijiluList.action" target="hsgmain">缴费查询</a></dd>

		</dl>
<dl class="custom">
			<!-- <dt onClick="changeImage()">学生统计<img src="images/left/select_xl01.png"></dt> -->
			<dt >学生统计<img src="images/left/select_xl01.png"></dt>
			<!-- <dd><a href="xuesheng_tj_yuanxi.jsp" target="hsgmain">按院系统计</a></dd> -->
			<dd><a href="xsListgender.action" target="hsgmain">统计详情</a></dd>

		</dl>
<dl class="custom">
			<dt onClick="changeImage()">系统管理<img src="images/left/select_xl01.png"></dt>
			<dd><a href="databack.jsp" target="hsgmain">数据备份</a></dd>

		</dl>




	
	</div>

</div>
<script type="text/javascript" src="images/jquery.js"></script>
<script type="text/javascript">
$(".leftsidebar_box dt").css({"background-color":"#339999"});
$(".leftsidebar_box dt img").attr("src","images/left/select_xl01.png");
$(function(){
	$(".leftsidebar_box dd").hide();
	$(".leftsidebar_box dt").click(function(){
		$(".leftsidebar_box dt").css({"background-color":"#339999"})
		$(this).css({"background-color": "#339999"});
		$(this).parent().find('dd').removeClass("menu_chioce");
		$(".leftsidebar_box dt img").attr("src","images/left/select_xl01.png");
		$(this).parent().find('img').attr("src","images/left/select_xl.png");
		$(".menu_chioce").slideUp(); 
		$(this).parent().find('dd').slideToggle();
		$(this).parent().find('dd').addClass("menu_chioce");
	});
})
</script>
</body>
</html>