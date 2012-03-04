// AssemblyInfo.cs
// Tek4.Highcharts.Exporting assembly attributes.
// Tek4.Highcharts.Exporting assembly.
// ==========================================================================
// <summary>
// Assembly attributes.
// </summary>
// ==========================================================================
// Author: Kevin P. Rice, Tek4(TM) (http://Tek4.com/)
//
// Based upon ASP.NET Highcharts export module by Clément Agarini
//
// Copyright (C) 2012 by Tek4(TM) - Kevin P. Rice
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
// 2011-12-24 KPR v1.0.1 Latest Svg.dll requires .NET 3.5
// 2012-03-03 KPR v1.0.2 Exporter.WriteToStream() PNG requires seekable stream.

using System.Reflection;
using System.Runtime.InteropServices;

[assembly: AssemblyTitle("Tek4.Highcharts.Exporting")]
[assembly: AssemblyDescription(
  "ASP.NET chart exporting for Highcharts JS JavaScript charts.")]
[assembly: AssemblyCompany("Tek4(TM) (http://Tek4.com/)")]
[assembly: AssemblyProduct("Tek4.Highcharts.Exporting")]
[assembly: AssemblyCopyright("Copyright (C) 2012 Tek4(TM) - Kevin P. Rice.")]
[assembly: AssemblyTrademark("Tek4")]

[assembly: AssemblyVersion("1.0.2.0")]
[assembly: AssemblyFileVersion("2012.3.4.0242")]
[assembly: AssemblyInformationalVersion("1.0.2.0")]

[assembly: AssemblyCulture("")]

#if DEBUG
[assembly: AssemblyConfiguration("Debug")]
#else
[assembly: AssemblyConfiguration("Release")]
#endif

[assembly: ComVisible(false)]
[assembly: Guid("d52c518e-d000-439c-990d-8442b7f965f1")]

[assembly: System.CLSCompliant(true)]