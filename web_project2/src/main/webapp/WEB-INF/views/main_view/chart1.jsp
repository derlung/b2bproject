<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <html>
  <head>
    <script
      type="text/javascript"
      src="https://www.gstatic.com/charts/loader.js"
    ></script>
    <script type="text/javascript">
      google.charts.load("current", { packages: ["corechart"] });
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
    	   function drawChart() {
    	    	  
    	    	  
    	          let supply = new Array();  
    								
    	   	    		<c:forEach var="vo" items="${chart1}">
    							var result = "${vo.chart1_supply}";   	
    							var sum;
    			      	   		sum = parseInt(result);
    			      	   		supply.push(sum);
    			      	   		

    		      			</c:forEach>
    				
    							console.log(supply);
    	   	   	
    				      	   	
    	        var data = google.visualization.arrayToDataTable([
    	          ["X", "매출"],
    	          ["1월", supply[0]],
    	          ["2월",supply[1]],
    	          ["3월",supply[2]],
    	          ["4월",supply[3]],
    	          ["5월",supply[4]],
    	          ["6월",supply[5]],
    	          ["7월",supply[6]],
    	          ["8월",supply[7]],
    	          ["9월",supply[8]],
    	          ["10월",supply[9]],
    	          ["11월",supply[10]],
    	          ["12월",supply[11]],
    	          
    	        ]);


        var options = {
          legend: "none",
          series: {
            0: { color: "#e2431e" },
            1: { color: "#e7711b" },
          },
          lineWidth: 5,
          pointSize: 10,
          curveType: "function",

         
        };

        var chart = new google.visualization.LineChart(
          document.getElementById("chart_div")
        );
        chart.draw(data, options);
      }
    </script>
    
  
  </head>
  <body>
    <div id="chart_div" style="width: 100%; height: 400px;"></div>
  </body>
  
  
  <script>
  
  </script>
</html>
