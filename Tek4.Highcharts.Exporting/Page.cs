// Page.cs
// Tek4.Highcharts.Exporting.Page class.
// Tek4.Highcharts.Exporting assembly.
// ==========================================================================
// <summary>
// ASP.NET web Page class for exporting Highcharts JS JavaScript charts.
// </summary>
// ==========================================================================
// Author: Kevin P. Rice, Tek4(TM) (http://Tek4.com/)
//
// Based upon ASP.NET Highcharts export module by Clément Agarini
//
// Copyright (C) 2011 by Tek4(TM) - Kevin P. Rice
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
// 
// REVISION HISTORY:
// 2011-07-16 KPR Created.
// 

namespace Tek4.Highcharts.Exporting
{
  using System;
  using System.Web;

  /// <summary>
  /// ASP.NET web Page class for exporting Highcharts JS JavaScript charts.
  /// </summary>
  public class Page : System.Web.UI.Page
  {
    /// <summary>
    /// Initializes a new WebPage object.
    /// </summary>
    public Page()
    {
      // Register Page Load event handler.
      Load += new EventHandler(Page_Load);
    }

    /// <summary>
    /// Page Load event handler.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
      // Process the page request to export chart.
      ExportChart.ProcessExportRequest(HttpContext.Current);
    }
  }
}