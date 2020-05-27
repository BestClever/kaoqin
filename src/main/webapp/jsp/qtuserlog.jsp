<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="code" scope="page" class="com.util.CheckCode" />
<%request.setCharacterEncoding("utf-8");%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
 <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
<script language="javascript">
		function checklog()
		{                                                                                         
		     if(document.userlog.username.value=="")
			 {
			 	alert("请输入用户名");
				document.userlog.username.focus();
				return false;
			 }
			 if(document.userlog.pwd1.value=="")
			 {
			 	alert("请输入密码");
				document.userlog.pwd1.focus();
				return false;
			 }
			 
			if (document.userlog.pagerandom.value != document.userlog.yzm.value) {
			alert("验证码错误！");
			document.userlog.pagerandom.focus();
			return false;
	}
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.userlog.username.value,document.userlog.pwd1.value,document.userlog.cx.value,callback);
		}
		
		function callback(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="noyzm")
		    {
		        alert("验证码错误");
		    }
			if(data=="no")
		    {
		        alert("用户名或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("通过验证,系统登录成功");
		        window.location.href="index.action";
		    }
		    
		}
		
		
		
	    </script>
 <c:if test="${sessionScope.username==null}">
                          <form action="" method="post" name="userlog" id="userlog" style="display: inline">
						  <table width='100%' height='302' border='0' cellpadding='0' cellspacing='0' bgcolor='#FFFFFF' class='newsline'>
                              <tr>
                                <td height='48' colspan='4' style='padding-left:30px; font-size:20px;'><strong>用户登陆</strong></td>
                              </tr>
                              <tr>
                                <td width='40' height='28'>&nbsp;</td>
                                <td width='240' height='28'>用户名:</td>
                                <td height='28' colspan='2'><input name='username' type='text' id='username' placeholder='请输入用户名' style='width:160px; height:40px; border:solid 1px #000000; color:#666666;'  /></td>
                              </tr>
                              <tr>
                                <td height='28'>&nbsp;</td>
                             <td height='28'>密码:</td>
                                <td height='28' colspan='2'><input name='pwd1' type='password' id='pwd1' placeholder='请输入密码' style='width:160px; height:40px; border:solid 1px #000000; color:#666666' /></td>
                              </tr>
                              <tr >
                                <td height='28'>&nbsp;</td>
                                <td height='28'>权限:</td>
                                <td height='28' colspan='2'><select name='cx' id='cx' style='width:160px; height:40px; border:solid 1px #000000; color:#666666' >
                                  <option value='管理员'>管理员</option><option value='学生'>学生</option><option value='注册用户'>注册用户</option>
                                </select></td>
                              </tr>
                              <tr >
                                <td height='28'>&nbsp;</td>
                                <td height='28'>验证码:</td>
                                <td width='67' height='28'><input name="pagerandom" type="text" id="pagerandom" onKeyUp="this.value=this.value.replace(/\D/gi,'')" style=" height:20px; border:solid 1px #000000; color:#666666; width:50px" /></td>
                                <td width='653'><%
								String yzm=code.getCheckCode();
								%>  <input type="hidden" name="yzm" value="<%=yzm %>" >
								   <%=yzm %></td>
                              </tr>
                              <tr>
                                <td height='38' align='center'>&nbsp;</td>
                                <td height='38' align='center'>&nbsp;</td>
                                <td height='38' colspan='2'><input type='submit' name='Submit' value='登陆'  onclick='return checklog();' /><img id="indicator" src="images/loading.gif" style="display:none"/>
                                  <input type='reset' name='Submit2' value='重置'  /></td>
                              </tr>
                            </table>
							 </form>
 </c:if>
 <c:if test="${sessionScope.username!=null}">

<table width='100%' height='300' border='0' align='center' cellpadding='0' cellspacing='0' bgcolor='#FFFFFF'>
                            <tr>
                              <td height='28' align='left' style='padding-left:20px; font-size:20px;'>当前用户：${sessionScope.username}</td>
                            </tr>
							 <tr>
                              <td height='28' align='left' style='padding-left:20px; font-size:20px;'>您的权限： ${sessionScope.cx}</td>
                            </tr>
                            <tr>
                              <td height='28' align='left' style='padding-left:20px; font-size:20px;'>欢迎您的到来!!!</td>
                            </tr>
                            <tr>
                              <td height='28' align='center'><input type='button' name='Submit3' value='退出' onclick="javascript:location.href='logout.jsp';"  />
                                  <input type='button' name='Submit22' value='个人后台' onclick="javascript:location.href='main.jsp';"  /></td>
                            </tr>
                          </table>
 </c:if>