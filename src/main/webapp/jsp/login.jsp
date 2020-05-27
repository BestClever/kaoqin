<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:useBean id="code" scope="page" class="com.util.CheckCode" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>无标题文档</title>

<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="images/style.css" tppabs="css/style.css" />
<style>
body{height:100%;background:#16a085;overflow:hidden;}
canvas{z-index:-1;position:absolute;}
body,td,th {
	font-size: 0.28em;
}
</style>
<script src="images/jquery.js"></script>
<script src="images/verificationNumbers.js" tppabs="images/verificationNumbers.js"></script>
<script src="images/Particleground.js" tppabs="images/Particleground.js"></script>
<script>
$(document).ready(function() {
  //粒子背景特效
  $('body').particleground({
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
  //验证码
  createCode();
  //测试提交，对接程序删除即可
  $(".submit_btn").click(function(){
	  location.href="javascrpt:;"/*tpa=http://***index.html*/;
	  });
});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<script type='text/javascript' src='dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='dwr/engine.js'></script>
        <script type='text/javascript' src='dwr/util.js'></script>
        
		<script language="javascript">
		function check1()
		{                                                                                         
		     if(document.form1.username.value=="")
			 {
			 	alert("请输入用户名");
				document.form1.username.focus();
				return false;
			 }
			 if(document.form1.pwd.value=="")
			 {
			 	alert("请输入密码");
				document.form1.pwd.focus();
				return false;
			 }
			if (document.form1.pagerandom.value != document.form1.yzm.value)
			{
				alert("验证码错误！");
				document.form1.pagerandom.focus();
				return false;
			}
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.form1.username.value,document.form1.pwd.value,document.form1.cx.value,callback);
		}
		
		function callback(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("用户名或密码错误");
		    }
		    if(data=="yes")
		    {
		        //alert("通过验证,系统登录成功");
		        window.location.href="main.jsp";
		    }
		    
		}
		
		
		
	    </script>    

<body>
<dl class="admin_login">
 <dt>
  <form action="" method="post" name="form1" style="display: inline">
  <strong><font color=white>学生缴费管理系统</font></strong>
  <em>Management System</em>
 </dt>
 <dd class="user_icon">
  <input type="text" placeholder="账号" class="login_txtbx" name="username" id="username"/>
 </dd>
 <dd class="pwd_icon">
  <input type="password" placeholder="密码" class="login_txtbx" name="pwd" id="pwd"/>
 </dd>
 <dd>
 <div style="padding-top:10px;">
  <font color=white>权限：</font><select name="cx" id="cx">
              <option value="管理员">管理员</option>
<option value="学生">学生</option>


            </select>
	</div>	
 </dd>
 <dd class="val_icon">
  <div class="checkcode">
    <input type="text"  placeholder="验证码" maxlength="4" class="login_txtbx" id="pagerandom" name="pagerandom">
   
  </div>
 &nbsp; <font style="cursor:pointer; position:absolute; padding-top:10px; "> <%
								String yzm=code.getCheckCode();
								%>  <input type="hidden" name="yzm" value="<%=yzm %>" >
								  <font color="#FFFFFF"><%=yzm %></font></font>
 </dd>
 <dd>
  <input type="button" name="Submit" value="登陆" onClick="check1();" class="submit_btn"> <img id="indicator" src="images/loading.gif" style="display:none"/>
 </dd>
 <dd>

 </dd>
 
 </form>
</dl>
</body>
</html>
