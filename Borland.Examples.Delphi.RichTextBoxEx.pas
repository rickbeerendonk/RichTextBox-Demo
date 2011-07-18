{ *********************************************************************** }
{                                                                         }
{ Copyright (c) 2003 Martin Müller, 4voice AG                             }
{                                                                         }
{ Translated by: Rick Beerendonk (rick@beerendonk.com)                    }
{                Microloon BV                                             }
{                The Netherlands                                          }
{                                                                         }
{ ----------------------------------------------------------------------- }
{ THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY  }
{ KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE     }
{ IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A              }
{ PARTICULAR PURPOSE.                                                     }
{                                                                         }
{ *********************************************************************** }

// Paper:
//   http://msdn.microsoft.com/library/default.asp?url=/library/en-us/dnwinforms/html/wnf_richtextbox.asp

unit Borland.Examples.Delphi.RichTextBoxEx;

interface

uses
  System.Drawing,
  System.Drawing.Printing,
  System.Windows.Forms;

type
  TRichTextBoxEx = class(System.Windows.Forms.RichTextBox)
	private
    function HundredthInchToTwips(n: Integer): Integer;
  public
    function FormatRange(MeasureOnly: Boolean; E: PrintPageEventArgs;
      CharFrom, CharTo: Integer): Integer;
    procedure FormatRangeDone;
  end;

implementation

uses
  Borland.Vcl.RichEdit,
  Borland.Vcl.Windows,
  System.Runtime.InteropServices;

{ TRichTextBoxEx }

// Calculate or render the contents of our RichTextBox for printing
function TRichTextBoxEx.FormatRange(MeasureOnly: Boolean;
  e: PrintPageEventArgs; CharFrom, CharTo: Integer): Integer;
var
  cr: TCharRange;
  rc, rcPage: TRect;
  fr: TFormatRange;
  LocalHDC, lParam: IntPtr;
  wParam: Integer;
begin
  // Specify which characters to print
  cr.cpMin := CharFrom;
  cr.cpMax := CharTo;
  // Specify the area inside page margins
  rc.top    := HundredthInchToTwips(e.MarginBounds.Top);
  rc.bottom := HundredthInchToTwips(e.MarginBounds.Bottom);
  rc.left   := HundredthInchToTwips(e.MarginBounds.Left);
  rc.right  := HundredthInchToTwips(e.MarginBounds.Right);
  // Specify the page area
  rcPage.top    := HundredthInchToTwips(e.PageBounds.Top);
  rcPage.bottom := HundredthInchToTwips(e.PageBounds.Bottom);
  rcPage.left   := HundredthInchToTwips(e.PageBounds.Left);
  rcPage.right  := HundredthInchToTwips(e.PageBounds.Right);
  // Get device context of output device
  LocalHDC := e.Graphics.GetHdc;
  // Fill in the FORMATRANGE struct
  fr.chrg      := cr;
  fr.hdc       := Integer(LocalHDC);
  fr.hdcTarget := Integer(LocalHDC);
  fr.rc        := rc;
  fr.rcPage    := rcPage;
  // Non-Zero wParam means render, Zero means measure
	wParam := Ord(not measureOnly);
  // Allocate memory for the FORMATRANGE struct and
  // copy the contents of our struct to this memory
  lParam := Marshal.AllocCoTaskMem(Marshal.SizeOf(fr));
  Marshal.StructureToPtr(fr, lParam, false);
  // Send the actual Win32 message
  Result := SendMessage(HWND(Handle), EM_FORMATRANGE, wParam, Integer(lParam));
  // Free allocated memory
  Marshal.FreeCoTaskMem(lParam);
  // and release the device context
  e.Graphics.ReleaseHdc(LocalHDC);
end;

// Free cached data from rich edit control after printing
procedure TRichTextBoxEx.FormatRangeDone;
begin
  SendMessage(HWND(Handle), EM_FORMATRANGE, 0, 0);
end;

// Convert between 1/100 inch (unit used by the .NET framework)
// and twips (1/1440 inch, used by Win32 API calls)
function TRichTextBoxEx.HundredthInchToTwips(n: Integer): Integer;
begin
  Result := Round(n * 14.4);
end;

end.
