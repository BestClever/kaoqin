<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div id="navid" class="top">
		   <div class="nav-bd">
			   <ul class="login">
				 <li class="login_no-bg">
					  你好，欢迎来到学生缴费管理系统！
					  <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
					   					
										   <%}else{ %>
										    当前用户:<%=request.getSession().getAttribute("username")%>,权限:<%=request.getSession().getAttribute("cx")%>;&nbsp;&nbsp; <a href="logout.jsp" onclick="return confirm('确定要退出？')">退出</a><span>|</span><a href="main.jsp">个人后台</a>
										    <%} %>
					</li>
				</ul>    
		   </div>
	</div>
  <div class="layout bg2 nav ">
    <div class="menu">
      <div class="menu_rig">
        <div class="clear"></div>
        <div class="nav">
          <ul class="nav_list">
		   <div class="menu_lef">
      <a href="index.action">
       <div class="qtimages-img">
          <div class="zhuxuewang1" ><img src="qtimages/logo.jpg" width="100" height="99" /></div>
	      <div  class="zhuxuewang"  >学生缴费管理系统</div>
	   </div>
      </a>
      </div>
            <li  class='drop-menu-effect'><a href='index.action'><span>首页</span></a></li>

<li class='drop-menu-effect'><a href='xueshengadd.jsp'><span>学生注册</span></a></li>


     <li class='drop-menu-effect'><a style='cursor:pointer'><span>新闻信息</span></a>
      <ul class='submenu'> <li><a href='news.action?lb=站内新闻'>站内新闻</a></li>   </ul>
     <!--</li>     <li class='drop-menu-effect'><a style='cursor:pointer'><span>系统概要</span></a>
      <ul class='submenu'> <li><a href='dx_detail.jsp?lb=系统简介'>系统简介</a></li> <li><a href='dx_detail.jsp?lb=关于我们'>关于我们</a></li> <li><a href='dx_detail.jsp?lb=联系方式'>联系方式</a></li>  </ul>-->
 <!--    </li>     <li class='drop-menu-effect'><a style='cursor:pointer'><span>在线留言</span></a>
      <ul class='submenu'> <li><a href='lyb.jsp'>在线留言</a></li> <li><a href='lyblist.action'>查看留言</a></li>  </ul>
     </li><!--yoxulixuyaxn-->
<li class='drop-menu-effect'><a href='login.jsp'><span>个人中心</span></a></li>
			
		
          </ul>
        </div>
		  <script>
			    $(function () {
			      $(window).scroll(function () {
			        if($(window).scrollTop() >= $(".top").height() ){
			          $(".nav").addClass("fixed");
			          $(".main").css("marginTop", $(".nav").height() + 10);
			          
			        }else {
			          $(".nav").removeClass("fixed");
			          $(".main").css("marginTop", 0);
			        }
			      });
			    });
		</script>
        <script>
        function dropMenu(obj){
            $(obj).each(function(){
              var theSpan = $(this);
              var theMenu = theSpan.find(".submenu");
              var tarHeight = theMenu.height();
              theMenu.css({height:0,opacity:0});
              
              var t1;
              
              function expand() {
                clearTimeout(t1);
                theSpan.find('a').addClass("selected");
                theMenu.stop().show().animate({height:tarHeight,opacity:1},100);
              }
              
              function collapse() {
                clearTimeout(t1);
                t1 = setTimeout(function(){
                  theSpan.find('a').removeClass("selected");
                  theMenu.stop().animate({height:0,opacity:0},100,function(){
                    $(this).css({display:"none"});
                  });
                }, 150);
              }
              
              theSpan.hover(expand, collapse);
              theMenu.hover(expand, collapse);
            });
          }

        $(document).ready(function(){
          
          dropMenu(".drop-menu-effect");

        });
        </script>
        <div class="lanren-search-form">
        <form method="post" action="news.action">
            <div id="search-hd" class="search-hd">
                <div class="search-bg"></div>
                <input name="biaoti" type="text" id="s1" class="search-input" placeholder="搜索">
                <button id="submit" class="btn-search" value="搜索" type="submit"></button>
            </div>
        </form>
        </div>
      </div>
    </div>
  </div>

 
