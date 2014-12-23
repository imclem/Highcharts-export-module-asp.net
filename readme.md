## Tek4.Highcharts.Exporting assembly

Tek4 ASP.NET Exporting Module for Highcharts JS (http://highcharts.com/).
Version 1.0.2.0 (March 3, 2012)

* Based upon ASP.NET Highcharts export module by Clément Agarini (June 15, 2011).
* Re-written by Kevin P. Rice (http://tek4.com/).
* **Important Information** To all the people using a version prior to ac837d6931e4a51fe6e2afbd731480c6b628c6f5 you must either comply to AGPLv3 license induced by iTextSharp or upgrade to the newest version which removed link to iTextSharp

## Quick start

### Demo web site ###
* Visual Studio: Open the solution (.sln) and run the demo website.
* IIS: Create a web application and copy the files in the demo website directory (choosing correct web.config).

### Your web site ###
* Copy the three .dll files from the demo website /bin directory to your website /bin directory (Tek4.Highcharts.Exporting.dll, itextsharp.dll, Svg.dll).
* Review the demo website 'Default.aspx' and 'web.config' files for configuration and usage details.
* Configuration in 'web.config' is for .NET 3.5 and 'web-dotNET4.0.config' is for .NET 4.0 and later.


## Features

* Exports Highcharts JS charts to PNG/JPG/PDF/SVG.
* Uses three precompiled .DLL files in /bin directory and configuration via web.config.
* Can be called as either an ASP.NET page (HighchartsExport.aspx) or as an HttpHandler (HighchartsExport.axd).
* Supports Highcharts exporting 'width' option to generate high quality images of any size (PDF images are exported at 150 dpi).
* Supports Highcharts exporting 'filename' option to specify downloaded file name.
* Works with .NET 3.5 Framework and later.
* Visual Studio 2010 solution/project files included (targeted to .NET 3.5).


## Project Home

* https://github.com/imclem/Highcharts-export-module-asp.net


## License

Re-distributed works listed below are not subject to this license. These
works are separately licensed according to their terms.

Copyright (C) 2012 by Tek4(TM) - Kevin P. Rice

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


## Redistributed components (separately licensed):

* SVG Rendering Engine (Svg.dll):  https://github.com/vvvv/SVG
* sharpPDF 1.3.1 (sharpPDF.dll): http://sharppdf.sourceforge.net/
