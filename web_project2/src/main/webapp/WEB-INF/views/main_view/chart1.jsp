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
        var data = google.visualization.arrayToDataTable([
          ["X", "매출"],
          ["1월", 20],
          ["2월", 35],
          ["3월", 50],
          ["4월", 10],
          ["5월", 20],
          ["6월", 20],
          ["7월", 13],
          ["8월", 85],
          ["9월", 10],
          ["10월", 15],
          ["11월", 26],
          ["12월", 12],
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
