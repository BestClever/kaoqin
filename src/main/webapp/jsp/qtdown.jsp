<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div class="layout" style="border-bottom:1px solid #dedede;">
   <div class="ind_tit" style="margin-top:40px;">
     <h2>我们和最优秀的团队合作，创造价值，共赢未来。</h2>
   </div>
 </div>
  <div class="layout">
    <div class="firend">
      <ul>
	           <li><a href="http://www.163.com"><img src="upload/yahoo.jpg" alt="网易" width="181" title="网易"></a></li>
                 <li><a href="http://www.qq.com"><img src="upload/qq.jpg" alt="QQ" width="181" title="QQ"></a></li>
                 <li><a href="http://www.sina.com"><img src="upload/sina.jpg" alt="新浪" width="181" title="新浪"></a></li>
                 <li><a href="http://www.google.cn"><img src="upload/google.jpg" alt="谷歌" width="181" title="谷歌"></a></li>
                 <li><a href="http://www.baidu.com"><img src="upload/baidu.jpg" alt="百度" width="181" title="百度"></a></li>
          
      </ul>
      <ul>
 
      </ul>
    </div>
  </div>
    <div class="layout bg5">
    <div class="footer">
      <ul>
        <h3>产品与服务</h3>
        <a><li>产品方案</li></a>
        <a><li>技术服务</li></a>
      </ul>
      <ul>
        <h3>客户与合作</h3>
        <a><li>主要客户</li></a>
        <a><li>战略伙伴</li></a>
        <a><li>典型案例</li></a>
      </ul>
      <ul>
        <h3>资讯中心</h3>
        <a><li>公司动态</li></a>
        <a><li>媒体视频</li></a>
        <a><li>真我风采</li></a>
        <ax><li>友情链接</li></a>
      </ul>
      <ul>
        <h3>英雄加盟</h3>
        <a><li>招贤纳士</li></a>
        <a><li>关怀与成长</li></a>
        <a><li>职业发展</li></a>
        <a><li>总经理致辞</li></a>
      </ul>
      <ul style="width:97px;float:right;text-align:center;">
        <h3>官方微信</h3>
        <img src="qtimages/picture/1484283352.jpg" alt="官方微信" title="官方微信">
      </ul>
    </div>
  </div>
  <div class="layout bg3">
    <div class="foot">
      <div class="foot_lef">
        <div class="goumai_b">
          <div class="slideTxtBox">
            <div class="hd">
              <ul>
                  <li class="on">上海</li>
                  <li>深圳</li>
                  <li>西安</li>
                  <li>成都</li>
              </ul>
            </div>
            <div class="bd">
              <div  style="display: block;">上海市xxxxxxxxxxx室 </div>
              <div  style="display: none;">深圳市sssssssssss楼 </div>
              <div  style="display: none;">西安市rrrrrrrrrrrrrr室 </div>
              <div  style="display: none;">成都市ffffffffffff楼</div>
            </div>
          </div>
          <script type="text/javascript">jQuery(".slideTxtBox").slide();</script>
           <!--  <script type="text/javascript">jQuery(".slideTxtBox").slide({trigger:"click"});</script> -->
        </div>
      </div>
      <div class="foot_rig">
        <div class="foot_rig_t">
          <a href="#"><span><img src="qtimages/picture/l_01.png"></span></a>
          <a href="#"><span><img src="qtimages/picture/l_02.png"></span></a>
          <a href="#"><span><img src="qtimages/picture/l_03.png"></span></a>
          <a href="#"><span><img src="qtimages/picture/l_04.png"></span></a>
        </div>
        <div class="foot_rig_o">@ 2019  学生缴费管理系统 . All Rights Reserved. <a href="#">沪ICP备xxxxxx号</a>&nbsp;</div>
      </div>
    </div>
  </div>
  <p id="back-to-top"><a href="#top"><span></span></a></p>
  
  </div>
  <script>
      $(function () {
          $(function () {
              $(window).scroll(function () {
                  if ($(window).scrollTop() > 100) {
                      $("#back-to-top").fadeIn(900);
                  }
                  else {
                      $("#back-to-top").stop().fadeOut(900);
                  }
              });
              $("#back-to-top").click(function () {
                  $('body,html').stop().animate({ scrollTop: 0 }, 100); 
                  return false;
              });
          });
      });
  </script> 