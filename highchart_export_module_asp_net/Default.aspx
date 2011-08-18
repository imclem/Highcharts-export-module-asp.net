<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="highchart_export_module_asp_net._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Highchart js export module sample</title>
    <script src="Javascript/jquery-1.5.1.js" type="text/javascript"></script>
    <script src="http://highcharts.com/js/highcharts.js" type="text/javascript"></script>   
    <script src="http://highcharts.com/js/modules/exporting.js" type="text/javascript"></script> 
</head>

<script language="javascript" type="text/javascript">
    var chart;
$(document).ready(function() {
   chart = new Highcharts.Chart({
      chart: {
         renderTo: 'container',
         defaultSeriesType: 'bar',
         marginRight: 130,
         marginBottom: 25
      },
      title: {
         text: 'Monthly Average Temperature',
         x: -20 //center
      },
      subtitle: {
         text: 'Source: WorldClimate.com',
         x: -20
      },
      xAxis: {
         categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 
            'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
      },
      yAxis: {
         title: {
            text: 'Temperature (Â°C)'
         },
         plotLines: [{
            value: 0,
            width: 1,
            color: '#808080'
         }]
      },
      tooltip: {
         formatter: function() {
                   return '<b>'+ this.series.name +'</b><br/>'+
               this.x +': '+ this.y +'Â°C';
         }
      },
      legend: {
         layout: 'vertical',
         align: 'right',
         verticalAlign: 'top',
         x: -10,
         y: 100,
         borderWidth: 0
      },
      exporting: {
      url: "http://localhost:2001/highcharts_export.aspx"
      }
      ,
      series: [{
         name: 'Tokyo',
         data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
      }, {
         name: 'New York',
         data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]
      }, {
         name: 'Berlin',
         data: [-0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]
      }, {
         name: 'London',
         data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
      }]
   });
   
   
});
    
    </script> 
<body>
    <form id="form1" runat="server">
    <div id="container" style="width:900px;">
    
    </div>
    </form>
</body>
</html>
