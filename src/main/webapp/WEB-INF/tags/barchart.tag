<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@attribute name="fish" required="true" rtexprvalue="true" %>
<%@attribute name="one" required="true" rtexprvalue="true" %>
<%@attribute name="two" required="true" rtexprvalue="true" %>
<%@attribute name="three" required="true" rtexprvalue="true" %>
<%@attribute name="four" required="true" rtexprvalue="true" %>
<%@attribute name="five" required="true" rtexprvalue="true" %>
<%@tag body-content="scriptless" %> <!-- scriptless(預設)、empty、tagdependent -->
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
     google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawBasic);

function drawBasic() {

      var data = google.visualization.arrayToDataTable([
        ['Fish', '${fish}'],
        ['神仙魚',${one} ],
        ['藍眼大帆', ${two}],
        ['熊貓鼠', ${three}],
        ['孔雀魚', ${four}],
        ['紅蓮燈', ${five}]
      ]);

      var options = {
        title: '佳佳水族館銷售數量',
        chartArea: {width: '50%'},
        hAxis: {
          title: 'Total Population\n 佳佳水族館銷售數量長條圖',
          minValue: 0
        },
      };

      var chart = new google.visualization.BarChart(document.getElementById('barchart'));

      chart.draw(data, options);
    }
    </script>
  </head>
  <body>
      <h1><jsp:doBody /></h1>  
    <div id="barchart" ></div>
  </body>
</html>