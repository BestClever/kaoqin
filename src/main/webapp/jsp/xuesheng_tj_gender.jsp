<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>院系统计</title>
<script src="echarts.min.js"></script>
<script src="jquery-3.2.1.min.js"></script>
</head>
<body >
    <table style="display:none" id="planlists">
        <tbody>
        
        </tbody>
                <c:forEach var="a" items="${requestScope.rsl}" varStatus="s">
                <tr>
                <td > <input value ="${a.xingbie } " /></td>
                <td > <input value ="${a.yuanxi } " /></td>
                <td > <input value ="${a.addtime } " /></td>
                </tr>
                                
                </c:forEach>
        </table>
<div id="main" style="width:100%;height:480px" ></div>
<div id="main1" style="width:100%;height:480px" ></div>
<div id="main2" style="width:100%;height:480px" ></div>
<script type="text/javascript">
$( document ).ready(function() {
	
	//LoadData();
	yuanxi();
	xingbie();
	addtime();
});
  

    function LoadData(){
    	 var total=0;
    	 var rows=[];
    	 $('#planlists tr').each(function() {
    		 total++;
    		    var td0 = $(this).find("td:eq(0)").find("input").val();  
    		    var td1 = $(this).find("td:eq(1)").find("input").val();  
    		    var td2 = $(this).find("td:eq(2)").find("input").val();  
	    		 
	    		 var obj=    {
	                     "xingbie": td0,
	                     "yuanxi":td1 ,
	                     "addtime":td2 
	                   
	                 };
	              rows.push(obj);   
	              
            });
            console.log(rows);
            return rows;
    	 
    	}
    
    function yuanxi(){
    	var list=LoadData();
    	var legend_data=[];
    	var data=[];
    	for(var i=0;i<list.length;i++){
    		var obj=list[i];
    		if(!legend_data.includes(obj.yuanxi)){
    			legend_data.push(obj.yuanxi);
    			data[obj.yuanxi]=1;
    		}else{
    			var v=data[obj.yuanxi];
    			v++;
    			data[obj.yuanxi]=v;
    		}
    	}
    	
    	var sdata=[];
    	for(var i=0;i<legend_data.length;i++){
    		var obj=legend_data[i];
    		var v={}
    		v['name']=obj;
    		v['value']=data[obj];
    		sdata.push(v);
    		
    	}
    	var option = {
    		    tooltip: {
    		        trigger: 'item',
    		        formatter: '{a} <br/>{b}: {c} ({d}%)'
    		    },
    		    legend: {
    		        orient: 'vertical',
    		        left: 10,
    		        data: legend_data
    		    },
    		    series: [
    		        {
    		            name: '按院系统计',
    		            type: 'pie',
    		            radius: ['50%', '70%'],
    		            avoidLabelOverlap: false,
    		            label: {
    		                show: false,
    		                position: 'center'
    		            },
    		            emphasis: {
    		                label: {
    		                    show: true,
    		                    fontSize: '30',
    		                    fontWeight: 'bold'
    		                }
    		            },
    		            labelLine: {
    		                show: false
    		            },
    		            data: sdata
    		        }
    		    ]
    		};

    	var myChart = echarts.init(document.getElementById('main'));
        window.onresize = myChart.resize;
        myChart.setOption(option);
    	console.log(legend_data);
    	console.log(data);
    }
    
    function xingbie(){
    	var list=LoadData();
    	
    	var legend_data=['男','女'];
    	var n1=0,n2=0;
    	for(var i =0;i<list.length;i++){
    		
    		var v=list[i];
    		if(v.xingbie=="男 ")n1++;
    		else n2++;
    		
    	}
    	sdata=[{'name':'男','value':n1},{'name':'女','value':n2}];
      	var option = {
    		    tooltip: {
    		        trigger: 'item',
    		        formatter: '{a} <br/>{b}: {c} ({d}%)'
    		    },
    		    legend: {
    		        orient: 'vertical',
    		        left: 10,
    		        data: legend_data
    		    },
    		    series: [
    		        {
    		            name: '按性别统计',
    		            type: 'pie',
    		            radius: ['50%', '70%'],
    		            avoidLabelOverlap: false,
    		            label: {
    		                show: false,
    		                position: 'center'
    		            },
    		            emphasis: {
    		                label: {
    		                    show: true,
    		                    fontSize: '30',
    		                    fontWeight: 'bold'
    		                }
    		            },
    		            labelLine: {
    		                show: false
    		            },
    		            data: sdata
    		        }
    		    ]
    		};
      	var myChart = echarts.init(document.getElementById('main1'));
        window.onresize = myChart.resize;
        myChart.setOption(option);
    }
    function addtime(){
    	var list=LoadData();
    	var legend_data=[];
    	var data=[];
		for(var i =0;i<list.length;i++){
    		
    		var v=list[i];
    		var str=v.addtime+"";
    		var year=(str.split('-'))[0];
    		
    		
    		if(!legend_data.includes(year)){
    			legend_data.push(year);
    			data[year]=1;
    		}else{
    			var v=data[year];
    			v++;
    			data[year]=v;
    		}
    		
    	}
	 	var sdata=[];
    	for(var i=0;i<legend_data.length;i++){
    		var obj=legend_data[i];
    		var v={}
    		v['name']=obj;
    		v['value']=data[obj];
    		sdata.push(v);
    		
    	}
    	var option = {
    		    tooltip: {
    		        trigger: 'item',
    		        formatter: '{a} <br/>{b}: {c} ({d}%)'
    		    },
    		    legend: {
    		        orient: 'vertical',
    		        left: 10,
    		        data: legend_data
    		    },
    		    series: [
    		        {
    		            name: '按登记时间统计',
    		            type: 'pie',
    		            radius: ['50%', '70%'],
    		            avoidLabelOverlap: false,
    		            label: {
    		                show: false,
    		                position: 'center'
    		            },
    		            emphasis: {
    		                label: {
    		                    show: true,
    		                    fontSize: '30',
    		                    fontWeight: 'bold'
    		                }
    		            },
    		            labelLine: {
    		                show: false
    		            },
    		            data: sdata
    		        }
    		    ]
    		};
    	
    	var myChart = echarts.init(document.getElementById('main2'));
        window.onresize = myChart.resize;
        myChart.setOption(option);
    	
    }

</script>  
    
</body>
</html>


