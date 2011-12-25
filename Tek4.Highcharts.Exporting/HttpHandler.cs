// HttpHandler.cs
// Tek4.Highcharts.Exporting.HttpHandler class.
// Tek4.Highcharts.Exporting assembly.
// ==========================================================================
// <summary>
// ASP.NET HTTP Handler for exporting Highcharts JS JavaScript charts.
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
// 2011-07-17 KPR Created.
// 

namespace Tek4.Highcharts.Exporting
{
  using System;
  using System.Web;

  /// <summary>
  /// ASP.NET HttpHandler for exporting Highcharts JS JavaScript charts.
  /// </summary>
  public class HttpHandler : IHttpHandler
  {
    /// <summary>
    /// Gets a value indicating whether another request can use the 
    /// IHttpHandler instance.
    /// </summary>
    public bool IsReusable
    {
      get { return true; }
    }

    /// <summary>
    /// Processes HTTP web requests directed to this HttpHandler.
    /// </summary>
    /// <param name="context">An HttpContext object that provides references 
    /// to the intrinsic server objects (for example, Request, Response, 
    /// Session, and Server) used to service HTTP requests.</param>
    public void ProcessRequest(HttpContext context)
    {
      // Process the request to export chart.
      ExportChart.ProcessExportRequest(context);
    }
  }
}