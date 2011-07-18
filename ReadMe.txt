RICH TEXT BOX DEMO

A Borland Delphi Demo for Microsoft .NET Framework

Written by Rick Beerendonk (rick@beerendonk.com)
           Microloon BV
           The Netherlands

--------------------------------------------------

THIS CODE AND INFORMATION ARE PROVIDED "AS IS" 
WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR 
IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED 
WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
PARTICULAR PURPOSE.

--------------------------------------------------

SUMMARY

This demo shows the use of many Rich Text Box 
properties (Alignment, Fonts, FontSize, 
FontStyles, WordWrap, Find, DetectURL, Bullets, 
Zoom, Cut/Copy/Paste, Undo/Redo, Open/Save, etc.).
Of course, they are only enabled when they are 
really available (Paste/Undo/Redo).

Printing is implemented complete with Print 
Preview and Page Setup. Unfortunately the 
RichEditBox has no native support for printing, so 
some unmanaged code was necessary to allow 
printing.

This demo also shows the use of a number of 
standard dialogs and how to handle the 
dialogresults.

There are also two custom dialogs, find-dialog 
(with a demonstration of set-usage) and the 
info-dialog (showing how to use the linklabel to 
open a website).

Drag & drop of files onto the application is 
supported.

Finally it shows how to retrieve file and 
environment info (like versions).
