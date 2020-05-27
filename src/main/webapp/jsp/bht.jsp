<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="content-block overview">
        <div class="overview-carousel">
            <div class="aui-Carousel">
                <ul class="wrappers">
				<%
			List sybht=connDbBean.getShouyebht();
			if(!sybht.isEmpty()){
				for(int i=0;i<sybht.size();i++){
					if (i<=5)
					{
					List sybht2 =(ArrayList)sybht.get(i);
			

			%>
                     <li class="" style="transition-duration: 1s;">
                        <a  href="ggdetail.action?id=<%=sybht2.get(0)%>" rel="nofollow" target="_blank"><img src="<%=sybht2.get(2)%>"></a>
                    </li>
					<%
			}
			}
			}
			%>
           
 		            
 		  
                 </ul>
            </div>
        </div>
    </div>
<script src="qtimages/js/ga.js"></script>
<script src="qtimages/js/index.js"></script> 