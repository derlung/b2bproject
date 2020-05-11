<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    <script
      type="text/javascript"
      src="https://www.gstatic.com/charts/loader.js"
    ></script>
    <script
      type="text/javascript"
      src="https://www.gstatic.com/charts/loader.js"
    ></script>

   <script type="text/javascript">
   google.charts.load("current", {packages:["corechart"]});
   google.charts.setOnLoadCallback(drawChart);

   function drawChart() {   	
       let supply = new Array();  
		
  		<c:forEach var="vo" items="${chart2}">
				var result = "${vo.chart2_supply}";   	
				var sum;
     	   		sum = parseInt(result);
     	   		supply.push(sum);
     	   		

 			</c:forEach>
	
				console.log(supply);
				
				
				
     var data = google.visualization.arrayToDataTable([
       ["Element", "Density", { role: "style" } ],
       ["영업1팀", supply[0], " #007cb4"],
       ["영업2팀",  supply[1], "#f86b6b"],
       ["영업3팀",  supply[2], "#80a700"],
       ["영업4팀",  supply[3], "#e09c44"]
     ]);



      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options = {
        width: 0,
        height: 0,
        bar: {groupWidth: "60%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.BarChart(document.getElementById("barchart_values"));
      chart.draw(view, options);
  };
  </script>
<div id="barchart_values" style="width: 100%; height: 400px;"></div>

  