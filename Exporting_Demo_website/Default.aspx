<%@ Page Language="C#"%>
<!-- 
==========================================================================
ASP.NET Highcharts Exporting Module Demo.
Uses Tek4.Highcharts.Exporting assembly.

(Uses Highcharts JS "Basic Line" example from Highcharts.com).
==========================================================================
Author: Kevin P. Rice, Tek4(TM) (http://Tek4.com/)

Based upon ASP.NET Highcharts export module by Clément Agarini

Copyright (C) 2011 by Tek4(TM) - Kevin P. Rice

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

rev. 2011-12-24 Latest Svg.dll requires .NET 3.5
rev. 2011-08-18 .NET 2.0
-->
<!DOCTYPE html>
<html>
<head runat="server">
    <title>ASP.NET Highcharts Exporting Module Demo (Tek4.Highcharts.Exporting assembly)</title>

    <!-- 1. Include jQuery and Highcharts scripts. -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js" type="text/javascript"></script>
    <script src="http://highcharts.com/js/highcharts.js" type="text/javascript"></script>   

    <!-- 2. Include the Highcharts exporting module script. -->
    <script src="http://highcharts.com/js/modules/exporting.js" type="text/javascript"></script> 
    
    <!-- 3. DON'T FORGET to add the exporting url to your chart (along with
            any other desired exporting options):
    
          exporting: { 
            url: "HighchartsExport.axd",
            filename: 'MyChart',
            width: 1200
          }
    -->
    <script type="text/javascript">

      var chart;
      $(document).ready(function () {
        chart = new Highcharts.Chart({
          chart: {
            renderTo: 'container',
            defaultSeriesType: 'line',
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
              text: 'Temperature (°C)'
            },
            plotLines: [{
              value: 0,
              width: 1,
              color: '#808080'
            }]
          },
          tooltip: {
            formatter: function () {
              return '<b>' + this.series.name + '</b><br/>' +
                this.x + ': ' + this.y + '°C';
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
            url: 'HighchartsExport.axd',
            filename: 'MyChart',
            width: 1200
          },
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
</head>

<body>
    <div>
    <h2>Tek4 ASP.NET Exporting Module for Highcharts JS Demo.</h2>
    <ul style="font-family:Verdana, Courier">
      <li>Exports Highcharts JS charts to PNG/JPG/PDF/SVG.</li>
      <li>Uses three precompiled .DLL files in /bin directory and configuration via web.config.</li>
      <li>Can be called as either an ASP.NET page (HighchartsExport.aspx) or as an HttpHandler (HighchartsExport.axd).</li>
      <li>Supports Highcharts exporting 'width' option to generate high quality 
      images of any size (PDF images are exported at 150 dpi).</li>
      <li>Supports Highcharts exporting 'filename' option to specify downloaded file name.</li>
      <li>Works with .NET 3.5 Framework and above.</li>
    </ul>
    </div>

    <form id="form1" runat="server">
    <p>Highcharts JS "Basic Line" example from Highcharts.com:</p>
    <div id="container" style="width:900px;"/>
    </form>
</body>
</html>