{ *********************************************************************** }
{                                                                         }
{ Copyright (c) 2003 Borland Software Corporation                         }
{                                                                         }
{ Written by: Rick Beerendonk (rick@beerendonk.com)                       }
{             Microloon BV                                                }
{             The Netherlands                                             }
{                                                                         }
{ Thanks to Marcel van Brakel for his help with the FontSize-ComboBox     }
{                                                                         }
{ ----------------------------------------------------------------------- }
{ THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY  }
{ KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE     }
{ IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A              }
{ PARTICULAR PURPOSE.                                                     }
{                                                                         }
{ *********************************************************************** }

unit Borland.Examples.Delphi.RichTextBox.Main;

interface

uses
  Borland.Examples.Delphi.RichTextBoxEx,
  System.Drawing,
  System.Collections,
  System.ComponentModel,
  System.Data,
  System.Drawing.Printing,
  System.Resources,
  System.Windows.Forms;

type
  TMainForm = class(System.Windows.Forms.Form)
  {$REGION 'Designer Managed Code'}
  strict private
    /// <summary>
    /// Required designer variable.
    /// </summary>
    components: System.ComponentModel.IContainer;
    StatusBar: System.Windows.Forms.StatusBar;
    MainMenu1: System.Windows.Forms.MainMenu;
    FileMenu: System.Windows.Forms.MenuItem;
    EditMenu: System.Windows.Forms.MenuItem;
    HelpMenu: System.Windows.Forms.MenuItem;
    ToolBar: System.Windows.Forms.ToolBar;
    HelpInfoItem: System.Windows.Forms.MenuItem;
    FileNewItem: System.Windows.Forms.MenuItem;
    FileN1: System.Windows.Forms.MenuItem;
    FilePrintItem: System.Windows.Forms.MenuItem;
    EditUndoItem: System.Windows.Forms.MenuItem;
    EditN1: System.Windows.Forms.MenuItem;
    EditCutItem: System.Windows.Forms.MenuItem;
    EditCopyItem: System.Windows.Forms.MenuItem;
    EditPasteItem: System.Windows.Forms.MenuItem;
    EditN2: System.Windows.Forms.MenuItem;
    EditRedoItem: System.Windows.Forms.MenuItem;
    StatusBarPanel1: System.Windows.Forms.StatusBarPanel;
    StatusBarPanel2: System.Windows.Forms.StatusBarPanel;
    StatusBarPanel3: System.Windows.Forms.StatusBarPanel;
    FileSaveItem: System.Windows.Forms.MenuItem;
    FileOpenItem: System.Windows.Forms.MenuItem;
    OpenDialog: System.Windows.Forms.OpenFileDialog;
    EditFindItem: System.Windows.Forms.MenuItem;
    EditFindNextItem: System.Windows.Forms.MenuItem;
    SaveDialog: System.Windows.Forms.SaveFileDialog;
    FileSaveAsItem: System.Windows.Forms.MenuItem;
    FileN2: System.Windows.Forms.MenuItem;
    FileExitItem: System.Windows.Forms.MenuItem;
    NewButton: System.Windows.Forms.ToolBarButton;
    OpenButton: System.Windows.Forms.ToolBarButton;
    SaveButton: System.Windows.Forms.ToolBarButton;
    ToolBarImages: System.Windows.Forms.ImageList;
    Editor: Borland.Examples.Delphi.RichTextBoxEx.TRichTextBoxEx;
    Separator1: System.Windows.Forms.ToolBarButton;
    CutButton: System.Windows.Forms.ToolBarButton;
    CopyButton: System.Windows.Forms.ToolBarButton;
    Separator2: System.Windows.Forms.ToolBarButton;
    PasteButton: System.Windows.Forms.ToolBarButton;
    UndoButton: System.Windows.Forms.ToolBarButton;
    RedoButton: System.Windows.Forms.ToolBarButton;
    ViewMenu: System.Windows.Forms.MenuItem;
    ViewZoom200Item: System.Windows.Forms.MenuItem;
    ViewZoom100Item: System.Windows.Forms.MenuItem;
    ViewZoom50Item: System.Windows.Forms.MenuItem;
    Separator3: System.Windows.Forms.ToolBarButton;
    FindButton: System.Windows.Forms.ToolBarButton;
    FormatWordWrapItem: System.Windows.Forms.MenuItem;
    FormatDetectURLsItem: System.Windows.Forms.MenuItem;
    FontDialog: System.Windows.Forms.FontDialog;
    FormatMenu: System.Windows.Forms.MenuItem;
    FormatFontItem: System.Windows.Forms.MenuItem;
    FormatPanel: System.Windows.Forms.Panel;
    FormatToolBar: System.Windows.Forms.ToolBar;
    FormatPanelLeft: System.Windows.Forms.Panel;
    FontName: System.Windows.Forms.ComboBox;
    FormatToolBarDivider: System.Windows.Forms.ToolBar;
    BoldButton: System.Windows.Forms.ToolBarButton;
    ItalicButton: System.Windows.Forms.ToolBarButton;
    UnderlineButton: System.Windows.Forms.ToolBarButton;
    SeparatorFormat1: System.Windows.Forms.ToolBarButton;
    AlignLeftButton: System.Windows.Forms.ToolBarButton;
    CenterButton: System.Windows.Forms.ToolBarButton;
    AlignRightButton: System.Windows.Forms.ToolBarButton;
    SeparatorFormat2: System.Windows.Forms.ToolBarButton;
    BulletsButton: System.Windows.Forms.ToolBarButton;
    FormatAlignmentItem: System.Windows.Forms.MenuItem;
    FormatAlignLeftItem: System.Windows.Forms.MenuItem;
    FormatAlignCenterItem: System.Windows.Forms.MenuItem;
    FormatAlignRightItem: System.Windows.Forms.MenuItem;
    FormatBulletsItem: System.Windows.Forms.MenuItem;
    FontSize: System.Windows.Forms.ComboBox;
    ViewZoomItem: System.Windows.Forms.MenuItem;
    ViewToolbarItem: System.Windows.Forms.MenuItem;
    ViewFormatBarItem: System.Windows.Forms.MenuItem;
    ViewStatusBarItem: System.Windows.Forms.MenuItem;
    Separator4: System.Windows.Forms.ToolBarButton;
    PrintButton: System.Windows.Forms.ToolBarButton;
    PrintPreviewButton: System.Windows.Forms.ToolBarButton;
    FilePageSetupItem: System.Windows.Forms.MenuItem;
    FilePrintPreviewItem: System.Windows.Forms.MenuItem;
    PrintDocument: System.Drawing.Printing.PrintDocument;
    PrintDialog: System.Windows.Forms.PrintDialog;
    PrintPreviewDialog: System.Windows.Forms.PrintPreviewDialog;
    PageSetupDialog: System.Windows.Forms.PageSetupDialog;
    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    procedure InitializeComponent;
    procedure HelpInfoItem_Click(sender: System.Object; e: System.EventArgs);
    procedure FilePrintItem_Click(sender: System.Object; e: System.EventArgs);
    procedure EditUndoItem_Click(sender: System.Object; e: System.EventArgs);
    procedure EditCutItem_Click(sender: System.Object; e: System.EventArgs);
    procedure EditCopyItem_Click(sender: System.Object; e: System.EventArgs);
    procedure EditPasteItem_Click(sender: System.Object; e: System.EventArgs);
    procedure EditRedoItem_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
    procedure Application_Idle(sender: System.Object; e: System.EventArgs);
    procedure EditFindItem_Click(sender: System.Object; e: System.EventArgs);
    procedure EditFindNextItem_Click(sender: System.Object; e: System.EventArgs);
    procedure FileExitItem_Click(sender: System.Object; e: System.EventArgs);
    procedure FileNewItem_Click(sender: System.Object; e: System.EventArgs);
    procedure FileOpenItem_Click(sender: System.Object; e: System.EventArgs);
    procedure FileSaveItem_Click(sender: System.Object; e: System.EventArgs);
    procedure FileSaveAsItem_Click(sender: System.Object; e: System.EventArgs);
    procedure FormatAlignLeftItem_Click(sender: System.Object; e: System.EventArgs);
    procedure FormatAlignCenterItem_Click(sender: System.Object; e: System.EventArgs);
    procedure FormatAlignRightItem_Click(sender: System.Object; e: System.EventArgs);
    procedure FormatBulletsItem_Click(sender: System.Object; e: System.EventArgs);
    procedure ViewZoom200Item_Click(sender: System.Object; e: System.EventArgs);
    procedure ViewZoom100Item_Click(sender: System.Object; e: System.EventArgs);
    procedure ViewZoom50Item_Click(sender: System.Object; e: System.EventArgs);
    procedure FormatDetectURLsItem_Click(sender: System.Object; e: System.EventArgs);
    procedure FormatWordWrapItem_Click(sender: System.Object; e: System.EventArgs);
    procedure FormatFontItem_Click(sender: System.Object; e: System.EventArgs);
    procedure FontName_SelectionChangeCommitted(sender: System.Object; e: System.EventArgs);
    procedure ToolBar_ButtonClick(sender: System.Object; e: System.Windows.Forms.ToolBarButtonClickEventArgs);
    procedure FormatToolBar_ButtonClick(sender: System.Object; e: System.Windows.Forms.ToolBarButtonClickEventArgs);
    procedure FontSize_SelectionChangeCommitted(sender: System.Object; e: System.EventArgs);
    procedure ViewToolbarItem_Click(sender: System.Object; e: System.EventArgs);
    procedure ViewFormatBarItem_Click(sender: System.Object; e: System.EventArgs);
    procedure ViewStatusBarItem_Click(sender: System.Object; e: System.EventArgs);
    procedure TMainForm_DragEnter(sender: System.Object; e: System.Windows.Forms.DragEventArgs);
    procedure TMainForm_DragDrop(sender: System.Object; e: System.Windows.Forms.DragEventArgs);
    procedure FilePrintPreviewItem_Click(sender: System.Object; e: System.EventArgs);
    procedure FilePageSetupItem_Click(sender: System.Object; e: System.EventArgs);
    procedure PrintDocument_BeginPrint(sender: System.Object; e: System.Drawing.Printing.PrintEventArgs);
    procedure PrintDocument_EndPrint(sender: System.Object; e: System.Drawing.Printing.PrintEventArgs);
    procedure PrintDocument_PrintPage(sender: System.Object; e: System.Drawing.Printing.PrintPageEventArgs);
  strict protected
    /// <summary>
    /// Clean up any resources being used.
    /// </summary>
    procedure Dispose(Disposing: Boolean); override;
  private
    FFileName: string;
    FFindOptions: RichTextBoxFinds;
    FFindPrevious: Integer;
    FFindText: string;
    FFirstCharOnPage: Integer; // Needed for printing
    FUpdating: Boolean;
    function CanCloseCurrentFile: Boolean;
    procedure GetFontNames;
    procedure PerformFileOpen(const AFileName: string);
    procedure SetFileName(const AFileName: string);
    procedure SetZoom(const AZoomFactor: Single);
    // UI
    procedure EditCut;
    procedure EditCopy;
    procedure EditPaste;
    procedure EditUndo;
    procedure EditRedo;
    procedure FileNew;
    procedure FileOpen;
    procedure FileSave;
    procedure FileSaveAs;
    procedure FilePrint;
    procedure FilePrintWithDialog;
    procedure FilePrintPreview;
    procedure FilePageSetup;
    procedure Find;
    procedure FindNext;
    procedure FormatAlignLeft;
    procedure FormatAlignRight;
    procedure FormatBullets;
    procedure FormatCenter;
    procedure FormatFont;
    procedure FormatFontBold;
    procedure FormatFontItalic;
    procedure FormatFontUnderline;
  public
    constructor Create;
  end;

  [assembly: RuntimeRequiredAttribute(TypeOf(TMainForm))]

implementation

uses
  Borland.Examples.Delphi.RichTextBox.Find,
  Borland.Examples.Delphi.RichTextBox.Info,
  System.Drawing.Text,
  System.Globalization,
  System.IO;

resourcestring
  sUntitled = 'Untitled';
  sModified = 'Modified';
  sReadOnly = 'Read-only';
  sConfirm = 'Confirm';
  sMenuRedo = '&Redo';
  sMenuUndo = '&Undo';
  sBtnRedo = 'Redo';
  sBtnUndo = 'Undo';

{$REGION 'Windows Form Designer generated code'}
/// <summary>
/// Required method for Designer support - do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TMainForm.InitializeComponent;
type
  TSystem_Windows_Forms_StatusBarPanelArray = array of System.Windows.Forms.StatusBarPanel;
  TSystem_Windows_Forms_MenuItemArray = array of System.Windows.Forms.MenuItem;
  TSystem_Windows_Forms_ToolBarButtonArray = array of System.Windows.Forms.ToolBarButton;
  TSystem_ObjectArray = array of System.Object;
var
  resources: System.Resources.ResourceManager;
begin
  Self.components := System.ComponentModel.Container.Create;
  resources := System.Resources.ResourceManager.Create(TypeOf(TMainForm));
  Self.StatusBar := System.Windows.Forms.StatusBar.Create;
  Self.StatusBarPanel1 := System.Windows.Forms.StatusBarPanel.Create;
  Self.StatusBarPanel2 := System.Windows.Forms.StatusBarPanel.Create;
  Self.StatusBarPanel3 := System.Windows.Forms.StatusBarPanel.Create;
  Self.MainMenu1 := System.Windows.Forms.MainMenu.Create;
  Self.FileMenu := System.Windows.Forms.MenuItem.Create;
  Self.FileNewItem := System.Windows.Forms.MenuItem.Create;
  Self.FileOpenItem := System.Windows.Forms.MenuItem.Create;
  Self.FileSaveItem := System.Windows.Forms.MenuItem.Create;
  Self.FileSaveAsItem := System.Windows.Forms.MenuItem.Create;
  Self.FileN1 := System.Windows.Forms.MenuItem.Create;
  Self.FilePrintItem := System.Windows.Forms.MenuItem.Create;
  Self.FilePrintPreviewItem := System.Windows.Forms.MenuItem.Create;
  Self.FilePageSetupItem := System.Windows.Forms.MenuItem.Create;
  Self.FileN2 := System.Windows.Forms.MenuItem.Create;
  Self.FileExitItem := System.Windows.Forms.MenuItem.Create;
  Self.EditMenu := System.Windows.Forms.MenuItem.Create;
  Self.EditUndoItem := System.Windows.Forms.MenuItem.Create;
  Self.EditRedoItem := System.Windows.Forms.MenuItem.Create;
  Self.EditN1 := System.Windows.Forms.MenuItem.Create;
  Self.EditCutItem := System.Windows.Forms.MenuItem.Create;
  Self.EditCopyItem := System.Windows.Forms.MenuItem.Create;
  Self.EditPasteItem := System.Windows.Forms.MenuItem.Create;
  Self.EditN2 := System.Windows.Forms.MenuItem.Create;
  Self.EditFindItem := System.Windows.Forms.MenuItem.Create;
  Self.EditFindNextItem := System.Windows.Forms.MenuItem.Create;
  Self.ViewMenu := System.Windows.Forms.MenuItem.Create;
  Self.ViewZoomItem := System.Windows.Forms.MenuItem.Create;
  Self.ViewZoom50Item := System.Windows.Forms.MenuItem.Create;
  Self.ViewZoom100Item := System.Windows.Forms.MenuItem.Create;
  Self.ViewZoom200Item := System.Windows.Forms.MenuItem.Create;
  Self.ViewToolbarItem := System.Windows.Forms.MenuItem.Create;
  Self.ViewFormatBarItem := System.Windows.Forms.MenuItem.Create;
  Self.ViewStatusBarItem := System.Windows.Forms.MenuItem.Create;
  Self.FormatMenu := System.Windows.Forms.MenuItem.Create;
  Self.FormatFontItem := System.Windows.Forms.MenuItem.Create;
  Self.FormatAlignmentItem := System.Windows.Forms.MenuItem.Create;
  Self.FormatAlignLeftItem := System.Windows.Forms.MenuItem.Create;
  Self.FormatAlignCenterItem := System.Windows.Forms.MenuItem.Create;
  Self.FormatAlignRightItem := System.Windows.Forms.MenuItem.Create;
  Self.FormatBulletsItem := System.Windows.Forms.MenuItem.Create;
  Self.FormatDetectURLsItem := System.Windows.Forms.MenuItem.Create;
  Self.FormatWordWrapItem := System.Windows.Forms.MenuItem.Create;
  Self.HelpMenu := System.Windows.Forms.MenuItem.Create;
  Self.HelpInfoItem := System.Windows.Forms.MenuItem.Create;
  Self.ToolBar := System.Windows.Forms.ToolBar.Create;
  Self.NewButton := System.Windows.Forms.ToolBarButton.Create;
  Self.OpenButton := System.Windows.Forms.ToolBarButton.Create;
  Self.SaveButton := System.Windows.Forms.ToolBarButton.Create;
  Self.Separator1 := System.Windows.Forms.ToolBarButton.Create;
  Self.PrintButton := System.Windows.Forms.ToolBarButton.Create;
  Self.PrintPreviewButton := System.Windows.Forms.ToolBarButton.Create;
  Self.Separator2 := System.Windows.Forms.ToolBarButton.Create;
  Self.CutButton := System.Windows.Forms.ToolBarButton.Create;
  Self.CopyButton := System.Windows.Forms.ToolBarButton.Create;
  Self.PasteButton := System.Windows.Forms.ToolBarButton.Create;
  Self.Separator3 := System.Windows.Forms.ToolBarButton.Create;
  Self.UndoButton := System.Windows.Forms.ToolBarButton.Create;
  Self.RedoButton := System.Windows.Forms.ToolBarButton.Create;
  Self.Separator4 := System.Windows.Forms.ToolBarButton.Create;
  Self.FindButton := System.Windows.Forms.ToolBarButton.Create;
  Self.ToolBarImages := System.Windows.Forms.ImageList.Create(Self.components);
  Self.OpenDialog := System.Windows.Forms.OpenFileDialog.Create;
  Self.SaveDialog := System.Windows.Forms.SaveFileDialog.Create;
  Self.Editor := Borland.Examples.Delphi.RichTextBoxEx.TRichTextBoxEx.Create;
  Self.FontDialog := System.Windows.Forms.FontDialog.Create;
  Self.FormatPanel := System.Windows.Forms.Panel.Create;
  Self.FormatToolBar := System.Windows.Forms.ToolBar.Create;
  Self.BoldButton := System.Windows.Forms.ToolBarButton.Create;
  Self.ItalicButton := System.Windows.Forms.ToolBarButton.Create;
  Self.UnderlineButton := System.Windows.Forms.ToolBarButton.Create;
  Self.SeparatorFormat1 := System.Windows.Forms.ToolBarButton.Create;
  Self.AlignLeftButton := System.Windows.Forms.ToolBarButton.Create;
  Self.CenterButton := System.Windows.Forms.ToolBarButton.Create;
  Self.AlignRightButton := System.Windows.Forms.ToolBarButton.Create;
  Self.SeparatorFormat2 := System.Windows.Forms.ToolBarButton.Create;
  Self.BulletsButton := System.Windows.Forms.ToolBarButton.Create;
  Self.FormatPanelLeft := System.Windows.Forms.Panel.Create;
  Self.FontSize := System.Windows.Forms.ComboBox.Create;
  Self.FontName := System.Windows.Forms.ComboBox.Create;
  Self.FormatToolBarDivider := System.Windows.Forms.ToolBar.Create;
  Self.PrintDocument := System.Drawing.Printing.PrintDocument.Create;
  Self.PrintDialog := System.Windows.Forms.PrintDialog.Create;
  Self.PrintPreviewDialog := System.Windows.Forms.PrintPreviewDialog.Create;
  Self.PageSetupDialog := System.Windows.Forms.PageSetupDialog.Create;
  (System.ComponentModel.ISupportInitialize(Self.StatusBarPanel1)).BeginInit;
  (System.ComponentModel.ISupportInitialize(Self.StatusBarPanel2)).BeginInit;
  (System.ComponentModel.ISupportInitialize(Self.StatusBarPanel3)).BeginInit;
  Self.FormatPanel.SuspendLayout;
  Self.FormatPanelLeft.SuspendLayout;
  Self.SuspendLayout;
  // 
  // StatusBar
  // 
  Self.StatusBar.Location := System.Drawing.Point.Create(0, 404);
  Self.StatusBar.Name := 'StatusBar';
  Self.StatusBar.Panels.AddRange(TSystem_Windows_Forms_StatusBarPanelArray.Create(Self.StatusBarPanel1, Self.StatusBarPanel2, Self.StatusBarPanel3));
  Self.StatusBar.Size := System.Drawing.Size.Create(632, 22);
  Self.StatusBar.TabIndex := 3;
  // 
  // StatusBarPanel1
  // 
  Self.StatusBarPanel1.Width := 120;
  // 
  // StatusBarPanel2
  // 
  Self.StatusBarPanel2.Alignment := System.Windows.Forms.HorizontalAlignment.Center;
  Self.StatusBarPanel2.Width := 70;
  // 
  // StatusBarPanel3
  // 
  Self.StatusBarPanel3.Width := 50;
  // 
  // MainMenu1
  // 
  Self.MainMenu1.MenuItems.AddRange(TSystem_Windows_Forms_MenuItemArray.Create(Self.FileMenu, Self.EditMenu, Self.ViewMenu, Self.FormatMenu, Self.HelpMenu));
  // 
  // FileMenu
  // 
  Self.FileMenu.Index := 0;
  Self.FileMenu.MenuItems.AddRange(TSystem_Windows_Forms_MenuItemArray.Create(Self.FileNewItem, Self.FileOpenItem, Self.FileSaveItem, Self.FileSaveAsItem, Self.FileN1, Self.FilePrintItem, Self.FilePrintPreviewItem, Self.FilePageSetupItem, Self.FileN2, Self.FileExitItem));
  Self.FileMenu.Text := '&File';
  // 
  // FileNewItem
  // 
  Self.FileNewItem.Index := 0;
  Self.FileNewItem.Shortcut := System.Windows.Forms.Shortcut.CtrlN;
  Self.FileNewItem.Text := '&New';
  Include(Self.FileNewItem.Click, Self.FileNewItem_Click);
  // 
  // FileOpenItem
  // 
  Self.FileOpenItem.Index := 1;
  Self.FileOpenItem.Shortcut := System.Windows.Forms.Shortcut.CtrlO;
  Self.FileOpenItem.Text := '&Open...';
  Include(Self.FileOpenItem.Click, Self.FileOpenItem_Click);
  // 
  // FileSaveItem
  // 
  Self.FileSaveItem.Index := 2;
  Self.FileSaveItem.Shortcut := System.Windows.Forms.Shortcut.CtrlS;
  Self.FileSaveItem.Text := '&Save';
  Include(Self.FileSaveItem.Click, Self.FileSaveItem_Click);
  // 
  // FileSaveAsItem
  // 
  Self.FileSaveAsItem.Index := 3;
  Self.FileSaveAsItem.Text := 'Save &As...';
  Include(Self.FileSaveAsItem.Click, Self.FileSaveAsItem_Click);
  // 
  // FileN1
  // 
  Self.FileN1.Index := 4;
  Self.FileN1.Text := '-';
  // 
  // FilePrintItem
  // 
  Self.FilePrintItem.Index := 5;
  Self.FilePrintItem.Shortcut := System.Windows.Forms.Shortcut.CtrlP;
  Self.FilePrintItem.Text := '&Print...';
  Include(Self.FilePrintItem.Click, Self.FilePrintItem_Click);
  // 
  // FilePrintPreviewItem
  // 
  Self.FilePrintPreviewItem.Index := 6;
  Self.FilePrintPreviewItem.Text := 'Print Pre&view';
  Include(Self.FilePrintPreviewItem.Click, Self.FilePrintPreviewItem_Click);
  // 
  // FilePageSetupItem
  // 
  Self.FilePageSetupItem.Index := 7;
  Self.FilePageSetupItem.Text := 'Page Set&up...';
  Include(Self.FilePageSetupItem.Click, Self.FilePageSetupItem_Click);
  // 
  // FileN2
  // 
  Self.FileN2.Index := 8;
  Self.FileN2.Text := '-';
  // 
  // FileExitItem
  // 
  Self.FileExitItem.Index := 9;
  Self.FileExitItem.Text := '&Exit';
  Include(Self.FileExitItem.Click, Self.FileExitItem_Click);
  // 
  // EditMenu
  // 
  Self.EditMenu.Index := 1;
  Self.EditMenu.MenuItems.AddRange(TSystem_Windows_Forms_MenuItemArray.Create(Self.EditUndoItem, Self.EditRedoItem, Self.EditN1, Self.EditCutItem, Self.EditCopyItem, Self.EditPasteItem, Self.EditN2, Self.EditFindItem, Self.EditFindNextItem));
  Self.EditMenu.Text := '&Edit';
  // 
  // EditUndoItem
  // 
  Self.EditUndoItem.Index := 0;
  Self.EditUndoItem.Shortcut := System.Windows.Forms.Shortcut.CtrlZ;
  Self.EditUndoItem.Text := '&Undo';
  Include(Self.EditUndoItem.Click, Self.EditUndoItem_Click);
  // 
  // EditRedoItem
  // 
  Self.EditRedoItem.Index := 1;
  Self.EditRedoItem.Shortcut := System.Windows.Forms.Shortcut.CtrlY;
  Self.EditRedoItem.Text := '&Redo';
  Include(Self.EditRedoItem.Click, Self.EditRedoItem_Click);
  // 
  // EditN1
  // 
  Self.EditN1.Index := 2;
  Self.EditN1.Text := '-';
  // 
  // EditCutItem
  // 
  Self.EditCutItem.Index := 3;
  Self.EditCutItem.Shortcut := System.Windows.Forms.Shortcut.CtrlX;
  Self.EditCutItem.Text := 'Cu&t';
  Include(Self.EditCutItem.Click, Self.EditCutItem_Click);
  // 
  // EditCopyItem
  // 
  Self.EditCopyItem.Index := 4;
  Self.EditCopyItem.Shortcut := System.Windows.Forms.Shortcut.CtrlC;
  Self.EditCopyItem.Text := '&Copy';
  Include(Self.EditCopyItem.Click, Self.EditCopyItem_Click);
  // 
  // EditPasteItem
  // 
  Self.EditPasteItem.Index := 5;
  Self.EditPasteItem.Shortcut := System.Windows.Forms.Shortcut.CtrlV;
  Self.EditPasteItem.Text := '&Paste';
  Include(Self.EditPasteItem.Click, Self.EditPasteItem_Click);
  // 
  // EditN2
  // 
  Self.EditN2.Index := 6;
  Self.EditN2.Text := '-';
  // 
  // EditFindItem
  // 
  Self.EditFindItem.Index := 7;
  Self.EditFindItem.Shortcut := System.Windows.Forms.Shortcut.CtrlF;
  Self.EditFindItem.Text := '&Find...';
  Include(Self.EditFindItem.Click, Self.EditFindItem_Click);
  // 
  // EditFindNextItem
  // 
  Self.EditFindNextItem.Index := 8;
  Self.EditFindNextItem.Shortcut := System.Windows.Forms.Shortcut.F3;
  Self.EditFindNextItem.Text := 'Find &Next';
  Include(Self.EditFindNextItem.Click, Self.EditFindNextItem_Click);
  // 
  // ViewMenu
  // 
  Self.ViewMenu.Index := 2;
  Self.ViewMenu.MenuItems.AddRange(TSystem_Windows_Forms_MenuItemArray.Create(Self.ViewZoomItem, Self.ViewToolbarItem, Self.ViewFormatBarItem, Self.ViewStatusBarItem));
  Self.ViewMenu.Text := '&View';
  // 
  // ViewZoomItem
  // 
  Self.ViewZoomItem.Index := 0;
  Self.ViewZoomItem.MenuItems.AddRange(TSystem_Windows_Forms_MenuItemArray.Create(Self.ViewZoom50Item, Self.ViewZoom100Item, Self.ViewZoom200Item));
  Self.ViewZoomItem.Text := '&Zoom';
  // 
  // ViewZoom50Item
  // 
  Self.ViewZoom50Item.Index := 0;
  Self.ViewZoom50Item.RadioCheck := True;
  Self.ViewZoom50Item.Shortcut := System.Windows.Forms.Shortcut.CtrlShift1;
  Self.ViewZoom50Item.Text := '&50%';
  Include(Self.ViewZoom50Item.Click, Self.ViewZoom50Item_Click);
  // 
  // ViewZoom100Item
  // 
  Self.ViewZoom100Item.Checked := True;
  Self.ViewZoom100Item.Index := 1;
  Self.ViewZoom100Item.RadioCheck := True;
  Self.ViewZoom100Item.Shortcut := System.Windows.Forms.Shortcut.CtrlShift2;
  Self.ViewZoom100Item.Text := '&100%';
  Include(Self.ViewZoom100Item.Click, Self.ViewZoom100Item_Click);
  // 
  // ViewZoom200Item
  // 
  Self.ViewZoom200Item.Index := 2;
  Self.ViewZoom200Item.RadioCheck := True;
  Self.ViewZoom200Item.Shortcut := System.Windows.Forms.Shortcut.CtrlShift3;
  Self.ViewZoom200Item.Text := '&200%';
  Include(Self.ViewZoom200Item.Click, Self.ViewZoom200Item_Click);
  // 
  // ViewToolbarItem
  // 
  Self.ViewToolbarItem.Index := 1;
  Self.ViewToolbarItem.Text := '&Toolbar';
  Include(Self.ViewToolbarItem.Click, Self.ViewToolbarItem_Click);
  // 
  // ViewFormatBarItem
  // 
  Self.ViewFormatBarItem.Index := 2;
  Self.ViewFormatBarItem.Text := '&Format Bar';
  Include(Self.ViewFormatBarItem.Click, Self.ViewFormatBarItem_Click);
  // 
  // ViewStatusBarItem
  // 
  Self.ViewStatusBarItem.Index := 3;
  Self.ViewStatusBarItem.Text := '&Status Bar';
  Include(Self.ViewStatusBarItem.Click, Self.ViewStatusBarItem_Click);
  // 
  // FormatMenu
  // 
  Self.FormatMenu.Index := 3;
  Self.FormatMenu.MenuItems.AddRange(TSystem_Windows_Forms_MenuItemArray.Create(Self.FormatFontItem, Self.FormatAlignmentItem, Self.FormatBulletsItem, Self.FormatDetectURLsItem, Self.FormatWordWrapItem));
  Self.FormatMenu.Text := 'F&ormat';
  // 
  // FormatFontItem
  // 
  Self.FormatFontItem.Index := 0;
  Self.FormatFontItem.Text := '&Font...';
  Include(Self.FormatFontItem.Click, Self.FormatFontItem_Click);
  // 
  // FormatAlignmentItem
  // 
  Self.FormatAlignmentItem.Index := 1;
  Self.FormatAlignmentItem.MenuItems.AddRange(TSystem_Windows_Forms_MenuItemArray.Create(Self.FormatAlignLeftItem, Self.FormatAlignCenterItem, Self.FormatAlignRightItem));
  Self.FormatAlignmentItem.Text := '&Alignment';
  // 
  // FormatAlignLeftItem
  // 
  Self.FormatAlignLeftItem.Index := 0;
  Self.FormatAlignLeftItem.RadioCheck := True;
  Self.FormatAlignLeftItem.Text := '&Left';
  Include(Self.FormatAlignLeftItem.Click, Self.FormatAlignLeftItem_Click);
  // 
  // FormatAlignCenterItem
  // 
  Self.FormatAlignCenterItem.Index := 1;
  Self.FormatAlignCenterItem.RadioCheck := True;
  Self.FormatAlignCenterItem.Text := '&Center';
  Include(Self.FormatAlignCenterItem.Click, Self.FormatAlignCenterItem_Click);
  // 
  // FormatAlignRightItem
  // 
  Self.FormatAlignRightItem.Index := 2;
  Self.FormatAlignRightItem.RadioCheck := True;
  Self.FormatAlignRightItem.Text := '&Right';
  Include(Self.FormatAlignRightItem.Click, Self.FormatAlignRightItem_Click);
  // 
  // FormatBulletsItem
  // 
  Self.FormatBulletsItem.Index := 2;
  Self.FormatBulletsItem.Text := '&Bullet Style';
  Include(Self.FormatBulletsItem.Click, Self.FormatBulletsItem_Click);
  // 
  // FormatDetectURLsItem
  // 
  Self.FormatDetectURLsItem.Checked := True;
  Self.FormatDetectURLsItem.Index := 3;
  Self.FormatDetectURLsItem.Text := '&Detect URL';
  Include(Self.FormatDetectURLsItem.Click, Self.FormatDetectURLsItem_Click);
  // 
  // FormatWordWrapItem
  // 
  Self.FormatWordWrapItem.Index := 4;
  Self.FormatWordWrapItem.Text := '&Word wrap';
  Include(Self.FormatWordWrapItem.Click, Self.FormatWordWrapItem_Click);
  // 
  // HelpMenu
  // 
  Self.HelpMenu.Index := 4;
  Self.HelpMenu.MenuItems.AddRange(TSystem_Windows_Forms_MenuItemArray.Create(Self.HelpInfoItem));
  Self.HelpMenu.Text := '&Help';
  // 
  // HelpInfoItem
  // 
  Self.HelpInfoItem.Index := 0;
  Self.HelpInfoItem.Text := '&Info';
  Include(Self.HelpInfoItem.Click, Self.HelpInfoItem_Click);
  // 
  // ToolBar
  // 
  Self.ToolBar.Appearance := System.Windows.Forms.ToolBarAppearance.Flat;
  Self.ToolBar.Buttons.AddRange(TSystem_Windows_Forms_ToolBarButtonArray.Create(Self.NewButton, Self.OpenButton, Self.SaveButton, Self.Separator1, Self.PrintButton, Self.PrintPreviewButton, Self.Separator2, Self.CutButton, Self.CopyButton, Self.PasteButton, Self.Separator3, Self.UndoButton, Self.RedoButton, Self.Separator4, Self.FindButton));
  Self.ToolBar.DropDownArrows := True;
  Self.ToolBar.ImageList := Self.ToolBarImages;
  Self.ToolBar.Location := System.Drawing.Point.Create(0, 0);
  Self.ToolBar.Name := 'ToolBar';
  Self.ToolBar.ShowToolTips := True;
  Self.ToolBar.Size := System.Drawing.Size.Create(632, 28);
  Self.ToolBar.TabIndex := 1;
  Self.ToolBar.TextAlign := System.Windows.Forms.ToolBarTextAlign.Right;
  Self.ToolBar.Wrappable := False;
  Include(Self.ToolBar.ButtonClick, Self.ToolBar_ButtonClick);
  // 
  // NewButton
  // 
  Self.NewButton.ImageIndex := 0;
  Self.NewButton.ToolTipText := 'New';
  // 
  // OpenButton
  // 
  Self.OpenButton.ImageIndex := 1;
  Self.OpenButton.ToolTipText := 'Open';
  // 
  // SaveButton
  // 
  Self.SaveButton.ImageIndex := 2;
  Self.SaveButton.ToolTipText := 'Save';
  // 
  // Separator1
  // 
  Self.Separator1.Style := System.Windows.Forms.ToolBarButtonStyle.Separator;
  // 
  // PrintButton
  // 
  Self.PrintButton.ImageIndex := 3;
  Self.PrintButton.ToolTipText := 'Print';
  // 
  // PrintPreviewButton
  // 
  Self.PrintPreviewButton.ImageIndex := 4;
  Self.PrintPreviewButton.ToolTipText := 'Print Preview';
  // 
  // Separator2
  // 
  Self.Separator2.Style := System.Windows.Forms.ToolBarButtonStyle.Separator;
  // 
  // CutButton
  // 
  Self.CutButton.ImageIndex := 5;
  Self.CutButton.ToolTipText := 'Cut';
  // 
  // CopyButton
  // 
  Self.CopyButton.ImageIndex := 6;
  Self.CopyButton.ToolTipText := 'Copy';
  // 
  // PasteButton
  // 
  Self.PasteButton.ImageIndex := 7;
  Self.PasteButton.ToolTipText := 'Paste';
  // 
  // Separator3
  // 
  Self.Separator3.Style := System.Windows.Forms.ToolBarButtonStyle.Separator;
  // 
  // UndoButton
  // 
  Self.UndoButton.ImageIndex := 8;
  Self.UndoButton.ToolTipText := 'Undo';
  // 
  // RedoButton
  // 
  Self.RedoButton.ImageIndex := 9;
  Self.RedoButton.ToolTipText := 'Redo';
  // 
  // Separator4
  // 
  Self.Separator4.Style := System.Windows.Forms.ToolBarButtonStyle.Separator;
  // 
  // FindButton
  // 
  Self.FindButton.ImageIndex := 10;
  Self.FindButton.ToolTipText := 'Find';
  // 
  // ToolBarImages
  // 
  Self.ToolBarImages.ImageSize := System.Drawing.Size.Create(16, 16);
  Self.ToolBarImages.ImageStream := (System.Windows.Forms.ImageListStreamer(resources.GetObject('ToolBarImages.ImageStream')));
  Self.ToolBarImages.TransparentColor := System.Drawing.Color.Fuchsia;
  // 
  // OpenDialog
  // 
  Self.OpenDialog.Filter := 'Rich Text Files (*.rtf)|*.rtf|Text Files (*.txt)|*.txt';
  Self.OpenDialog.ShowReadOnly := True;
  // 
  // SaveDialog
  // 
  Self.SaveDialog.Filter := 'Rich Text Files (*.rtf)|*.rtf|Text Files (*.txt)|*.txt';
  // 
  // Editor
  // 
  Self.Editor.AllowDrop := True;
  Self.Editor.Dock := System.Windows.Forms.DockStyle.Fill;
  Self.Editor.Location := System.Drawing.Point.Create(0, 56);
  Self.Editor.Name := 'Editor';
  Self.Editor.Size := System.Drawing.Size.Create(632, 348);
  Self.Editor.TabIndex := 0;
  Self.Editor.Text := '';
  // 
  // FontDialog
  // 
  Self.FontDialog.FontMustExist := True;
  Self.FontDialog.ShowColor := True;
  // 
  // FormatPanel
  // 
  Self.FormatPanel.Controls.Add(Self.FormatToolBar);
  Self.FormatPanel.Controls.Add(Self.FormatPanelLeft);
  Self.FormatPanel.Dock := System.Windows.Forms.DockStyle.Top;
  Self.FormatPanel.Location := System.Drawing.Point.Create(0, 28);
  Self.FormatPanel.Name := 'FormatPanel';
  Self.FormatPanel.Size := System.Drawing.Size.Create(632, 28);
  Self.FormatPanel.TabIndex := 2;
  // 
  // FormatToolBar
  // 
  Self.FormatToolBar.Appearance := System.Windows.Forms.ToolBarAppearance.Flat;
  Self.FormatToolBar.Buttons.AddRange(TSystem_Windows_Forms_ToolBarButtonArray.Create(Self.BoldButton, Self.ItalicButton, Self.UnderlineButton, Self.SeparatorFormat1, Self.AlignLeftButton, Self.CenterButton, Self.AlignRightButton, Self.SeparatorFormat2, Self.BulletsButton));
  Self.FormatToolBar.DropDownArrows := True;
  Self.FormatToolBar.ImageList := Self.ToolBarImages;
  Self.FormatToolBar.Location := System.Drawing.Point.Create(232, 0);
  Self.FormatToolBar.Name := 'FormatToolBar';
  Self.FormatToolBar.ShowToolTips := True;
  Self.FormatToolBar.Size := System.Drawing.Size.Create(400, 28);
  Self.FormatToolBar.TabIndex := 2;
  Include(Self.FormatToolBar.ButtonClick, Self.FormatToolBar_ButtonClick);
  // 
  // BoldButton
  // 
  Self.BoldButton.ImageIndex := 11;
  Self.BoldButton.Style := System.Windows.Forms.ToolBarButtonStyle.ToggleButton;
  Self.BoldButton.ToolTipText := 'Bold';
  // 
  // ItalicButton
  // 
  Self.ItalicButton.ImageIndex := 12;
  Self.ItalicButton.Style := System.Windows.Forms.ToolBarButtonStyle.ToggleButton;
  Self.ItalicButton.ToolTipText := 'Italic';
  // 
  // UnderlineButton
  // 
  Self.UnderlineButton.ImageIndex := 13;
  Self.UnderlineButton.Style := System.Windows.Forms.ToolBarButtonStyle.ToggleButton;
  Self.UnderlineButton.ToolTipText := 'Underline';
  // 
  // SeparatorFormat1
  // 
  Self.SeparatorFormat1.Style := System.Windows.Forms.ToolBarButtonStyle.Separator;
  // 
  // AlignLeftButton
  // 
  Self.AlignLeftButton.ImageIndex := 14;
  Self.AlignLeftButton.Style := System.Windows.Forms.ToolBarButtonStyle.ToggleButton;
  Self.AlignLeftButton.ToolTipText := 'Align Left';
  // 
  // CenterButton
  // 
  Self.CenterButton.ImageIndex := 15;
  Self.CenterButton.Style := System.Windows.Forms.ToolBarButtonStyle.ToggleButton;
  Self.CenterButton.ToolTipText := 'Center';
  // 
  // AlignRightButton
  // 
  Self.AlignRightButton.ImageIndex := 16;
  Self.AlignRightButton.Style := System.Windows.Forms.ToolBarButtonStyle.ToggleButton;
  Self.AlignRightButton.ToolTipText := 'Align Right';
  // 
  // SeparatorFormat2
  // 
  Self.SeparatorFormat2.Style := System.Windows.Forms.ToolBarButtonStyle.Separator;
  // 
  // BulletsButton
  // 
  Self.BulletsButton.ImageIndex := 17;
  Self.BulletsButton.Style := System.Windows.Forms.ToolBarButtonStyle.ToggleButton;
  Self.BulletsButton.ToolTipText := 'Bullets';
  // 
  // FormatPanelLeft
  // 
  Self.FormatPanelLeft.Controls.Add(Self.FontSize);
  Self.FormatPanelLeft.Controls.Add(Self.FontName);
  Self.FormatPanelLeft.Controls.Add(Self.FormatToolBarDivider);
  Self.FormatPanelLeft.Dock := System.Windows.Forms.DockStyle.Left;
  Self.FormatPanelLeft.Location := System.Drawing.Point.Create(0, 0);
  Self.FormatPanelLeft.Name := 'FormatPanelLeft';
  Self.FormatPanelLeft.Size := System.Drawing.Size.Create(232, 28);
  Self.FormatPanelLeft.TabIndex := 1;
  // 
  // FontSize
  // 
  Self.FontSize.DropDownStyle := System.Windows.Forms.ComboBoxStyle.DropDownList;
  // Workaround; string() is needed, otherwise we add characters:
  Self.FontSize.Items.AddRange(TSystem_ObjectArray.Create(string('8'), string('9'), '10', '11', '12', '14', '16', '18', '20', '22', '24', '26', '28', '36', '48', '72'));
  Self.FontSize.Location := System.Drawing.Point.Create(180, 4);
  Self.FontSize.MaxDropDownItems := 12;
  Self.FontSize.Name := 'FontSize';
  Self.FontSize.Size := System.Drawing.Size.Create(52, 21);
  Self.FontSize.TabIndex := 2;
  Include(Self.FontSize.SelectionChangeCommitted, Self.FontSize_SelectionChangeCommitted);
  // 
  // FontName
  // 
  Self.FontName.DropDownStyle := System.Windows.Forms.ComboBoxStyle.DropDownList;
  Self.FontName.Location := System.Drawing.Point.Create(4, 4);
  Self.FontName.MaxDropDownItems := 12;
  Self.FontName.Name := 'FontName';
  Self.FontName.Size := System.Drawing.Size.Create(172, 21);
  Self.FontName.TabIndex := 0;
  Include(Self.FontName.SelectionChangeCommitted, Self.FontName_SelectionChangeCommitted);
  // 
  // FormatToolBarDivider
  // 
  Self.FormatToolBarDivider.Dock := System.Windows.Forms.DockStyle.Fill;
  Self.FormatToolBarDivider.DropDownArrows := True;
  Self.FormatToolBarDivider.Location := System.Drawing.Point.Create(0, 0);
  Self.FormatToolBarDivider.Name := 'FormatToolBarDivider';
  Self.FormatToolBarDivider.ShowToolTips := True;
  Self.FormatToolBarDivider.Size := System.Drawing.Size.Create(232, 42);
  Self.FormatToolBarDivider.TabIndex := 1;
  // 
  // PrintDocument
  // 
  Include(Self.PrintDocument.BeginPrint, Self.PrintDocument_BeginPrint);
  Include(Self.PrintDocument.EndPrint, Self.PrintDocument_EndPrint);
  Include(Self.PrintDocument.PrintPage, Self.PrintDocument_PrintPage);
  // 
  // PrintDialog
  // 
  Self.PrintDialog.Document := Self.PrintDocument;
  // 
  // PrintPreviewDialog
  // 
  Self.PrintPreviewDialog.AutoScrollMargin := System.Drawing.Size.Create(0, 0);
  Self.PrintPreviewDialog.AutoScrollMinSize := System.Drawing.Size.Create(0, 0);
  Self.PrintPreviewDialog.ClientSize := System.Drawing.Size.Create(480, 320);
  Self.PrintPreviewDialog.Document := Self.PrintDocument;
  Self.PrintPreviewDialog.Enabled := True;
  Self.PrintPreviewDialog.Icon := (System.Drawing.Icon(resources.GetObject('PrintPreviewDialog.Icon')));
  Self.PrintPreviewDialog.Location := System.Drawing.Point.Create(307, 54);
  Self.PrintPreviewDialog.MinimumSize := System.Drawing.Size.Create(375, 250);
  Self.PrintPreviewDialog.Name := 'PrintPreviewDialog';
  Self.PrintPreviewDialog.StartPosition := System.Windows.Forms.FormStartPosition.CenterParent;
  Self.PrintPreviewDialog.TransparencyKey := System.Drawing.Color.Empty;
  Self.PrintPreviewDialog.Visible := False;
  // 
  // PageSetupDialog
  // 
  Self.PageSetupDialog.Document := Self.PrintDocument;
  // 
  // TMainForm
  // 
  Self.AllowDrop := True;
  Self.AutoScaleBaseSize := System.Drawing.Size.Create(5, 13);
  Self.ClientSize := System.Drawing.Size.Create(632, 426);
  Self.Controls.Add(Self.Editor);
  Self.Controls.Add(Self.FormatPanel);
  Self.Controls.Add(Self.ToolBar);
  Self.Controls.Add(Self.StatusBar);
  Self.Icon := (System.Drawing.Icon(resources.GetObject('$this.Icon')));
  Self.Menu := Self.MainMenu1;
  Self.Name := 'TMainForm';
  Self.StartPosition := System.Windows.Forms.FormStartPosition.CenterScreen;
  Self.Text := 'Rich Text Box Control Demo';
  Include(Self.DragDrop, Self.TMainForm_DragDrop);
  Include(Self.DragEnter, Self.TMainForm_DragEnter);
  (System.ComponentModel.ISupportInitialize(Self.StatusBarPanel1)).EndInit;
  (System.ComponentModel.ISupportInitialize(Self.StatusBarPanel2)).EndInit;
  (System.ComponentModel.ISupportInitialize(Self.StatusBarPanel3)).EndInit;
  Self.FormatPanel.ResumeLayout(False);
  Self.FormatPanelLeft.ResumeLayout(False);
  Self.ResumeLayout(False);
end;
{$ENDREGION}

procedure TMainForm.Application_Idle(sender: System.Object; e: System.EventArgs);
var
  i: Integer;
  s: string;
  ClipboardFormats: array of string;
begin
  // Paste
  ClipboardFormats := Clipboard.GetDataObject.GetFormats(True);
  i := 0;
  EditPasteItem.Enabled := False;
  while not EditPasteItem.Enabled and (i < Length(ClipboardFormats)) do
  begin
    EditPasteItem.Enabled := Editor.CanPaste(DataFormats.GetFormat(ClipboardFormats[i]));
    Inc(i);
  end;
  PasteButton.Enabled := EditPasteItem.Enabled;
  // Undo
  s := Editor.UndoActionName;
  if Length(s) > 0 then
    s := ' ' + s;
  EditUndoItem.Enabled := Editor.CanUndo;
  EditUndoItem.Text := sMenuUndo + s;
  UndoButton.Enabled := Editor.CanUndo;
  UndoButton.ToolTipText := sBtnUndo + s;
  // Redo
  s := Editor.RedoActionName;
  if Length(s) > 0 then
    s := ' ' + s;
  EditRedoItem.Enabled := Editor.CanRedo;
  EditRedoItem.Text := sMenuRedo + s;
  RedoButton.Enabled := Editor.CanRedo;
  RedoButton.ToolTipText := sBtnRedo + s;
  EditFindNextItem.Enabled := FFindPrevious > -1;
  // Format
  FUpdating := True;
  try
    // Menu status
    ViewToolbarItem.Checked := ToolBar.Visible;
    ViewFormatBarItem.Checked := FormatPanel.Visible;
    ViewStatusBarItem.Checked := StatusBar.Visible;
    FormatDetectURLsItem.Checked := Editor.DetectUrls;
    FormatWordWrapItem.Checked := Editor.WordWrap;
    FormatAlignLeftItem.Checked := Editor.SelectionAlignment = HorizontalAlignment.Left;
    FormatAlignCenterItem.Checked := Editor.SelectionAlignment = HorizontalAlignment.Center;
    FormatAlignRightItem.Checked := Editor.SelectionAlignment = HorizontalAlignment.Right;
    FormatBulletsItem.Checked := Editor.SelectionBullet;
    // Toolbar status (pushed / comboboxes)
    if not FontName.DroppedDown then
      if Assigned(Editor.SelectionFont) then // Not assigned if multiple fonts are in the selection!
        FontName.SelectedIndex := FontName.Items.IndexOf(Editor.SelectionFont.Name)
      else
        FontName.SelectedIndex := -1;
    // Editor.SelectionFont is not assigned if multiple fonts are in the
    // selection! This makes it hard to adjust size or fontstyle because you
    // need the fonttype to do that:
    if not FontSize.DroppedDown then
    begin
      FontSize.Enabled := Assigned(Editor.SelectionFont);
      if Assigned(Editor.SelectionFont) then
        FontSize.SelectedIndex := FontSize.Items.IndexOf(Editor.SelectionFont.Size.ToString)
      else
        FontSize.SelectedIndex := -1;
    end;
    BoldButton.Enabled := Assigned(Editor.SelectionFont);
    BoldButton.Pushed := Assigned(Editor.SelectionFont) and Editor.SelectionFont.Bold;
    ItalicButton.Enabled := Assigned(Editor.SelectionFont);
    ItalicButton.Pushed := Assigned(Editor.SelectionFont) and Editor.SelectionFont.Italic;
    UnderlineButton.Enabled := Assigned(Editor.SelectionFont);
    UnderlineButton.Pushed := Assigned(Editor.SelectionFont) and Editor.SelectionFont.Underline;
    AlignLeftButton.Pushed := Editor.SelectionAlignment = HorizontalAlignment.Left;
    CenterButton.Pushed := Editor.SelectionAlignment = HorizontalAlignment.Center;
    AlignRightButton.Pushed := Editor.SelectionAlignment = HorizontalAlignment.Right;
    BulletsButton.Pushed := Editor.SelectionBullet;
  finally
    FUpdating := False;
  end;
  // Status
  if Editor.Modified then
    s := sModified
  else
    if Editor.ReadOnly then
      s := sReadOnly
    else
      s := '';
  if StatusBar.ShowPanels then
    StatusBar.Panels.Item[1].Text := s
  else
    StatusBar.Text := s;
end;

function TMainForm.CanCloseCurrentFile: Boolean;
begin
  if Editor.Modified then
  begin
    case MessageBox.Show('Save changes to ' + FFileName + '?',
      sConfirm, MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question)
    of
      System.Windows.Forms.DialogResult.Yes:
        begin
          FileSave;
          Result := True;
        end;
      System.Windows.Forms.DialogResult.No:
        Result := True;
    else
      // System.Windows.Forms.DialogResult.Cancel:
      Result := False;
    end;
  end
  else
    Result := True;
end;

procedure TMainForm.Dispose(Disposing: Boolean);
begin
  if Disposing then
  begin
    Editor.remove_DragDrop(TMainForm_DragDrop);
    Editor.remove_DragEnter(TMainForm_DragEnter);
    Application.remove_Idle(Application_Idle);
    if Components <> nil then
      Components.Dispose();
  end;
  inherited Dispose(Disposing);
end;

constructor TMainForm.Create;
begin
  inherited Create;
  //
  // Required for Windows Form Designer support
  //
  InitializeComponent;
  //
  // TODO: Add any constructor code after InitializeComponent call
  //
  FFindPrevious := -1;
  Application.add_Idle(Application_Idle);
  Editor.add_DragEnter(TMainForm_DragEnter);
  Editor.add_DragDrop(TMainForm_DragDrop);
  SetFileName(sUntitled);
  GetFontNames;
end;

procedure TMainForm.PrintDocument_PrintPage(sender: System.Object; e: System.Drawing.Printing.PrintPageEventArgs);
begin
  // To print the boundaries of the current page margins
  // uncomment the next line:
  //e.Graphics.DrawRectangle(System.Drawing.Pens.Blue, e.MarginBounds);

  // Make the RichTextBoxEx calculate and render as much text as will
  // fit on the page and remember the last character printed for the
  // beginning of the next page
  FFirstCharOnPage := Editor.FormatRange(False, e, FFirstCharOnPage,
    Editor.TextLength);

  // Check if there are more pages to print
  e.HasMorePages := FFirstCharOnPage < Editor.TextLength;
end;

procedure TMainForm.PrintDocument_EndPrint(sender: System.Object; e: System.Drawing.Printing.PrintEventArgs);
begin
  // Clean up cached information
  Editor.FormatRangeDone;
end;

procedure TMainForm.PrintDocument_BeginPrint(sender: System.Object; e: System.Drawing.Printing.PrintEventArgs);
begin
  // Start at the beginning of the text
	FFirstCharOnPage := 0;
end;

procedure TMainForm.FilePageSetupItem_Click(sender: System.Object; e: System.EventArgs);
begin
  FilePageSetup;
end;

procedure TMainForm.FilePrintPreviewItem_Click(sender: System.Object; e: System.EventArgs);
begin
  FilePrintPreview;
end;

procedure TMainForm.TMainForm_DragDrop(sender: System.Object; e: System.Windows.Forms.DragEventArgs);
type
  StringArray = array of string;
var
  Files: StringArray;
begin
  Files := StringArray(e.Data.GetData('FileDrop', False));
  PerformFileOpen(Files[0]);
end;

procedure TMainForm.TMainForm_DragEnter(sender: System.Object; e: System.Windows.Forms.DragEventArgs);
begin
  if e.Data.GetDataPresent(DataFormats.FileDrop) then
    e.Effect := DragDropEffects.All
  else
    e.Effect := DragDropEffects.None;
end;

procedure TMainForm.ViewStatusBarItem_Click(sender: System.Object; e: System.EventArgs);
begin
  StatusBar.Visible := not StatusBar.Visible;
end;

procedure TMainForm.ViewFormatBarItem_Click(sender: System.Object; e: System.EventArgs);
begin
  FormatPanel.Visible := not FormatPanel.Visible;
end;

procedure TMainForm.ViewToolbarItem_Click(sender: System.Object; e: System.EventArgs);
begin
  ToolBar.Visible := not ToolBar.Visible;
end;

procedure TMainForm.FontSize_SelectionChangeCommitted(sender: System.Object;
  e: System.EventArgs);
begin
  if FUpdating then Exit;
  if FontSize.SelectedIndex > -1 then
  begin
    Editor.Focus;
    Editor.SelectionFont := System.Drawing.Font.Create(Editor.SelectionFont.Name,
      Convert.ToSingle(FontSize.Items[FontSize.SelectedIndex]),
      Editor.SelectionFont.Style);
  end;
end;

procedure TMainForm.FormatAlignRightItem_Click(sender: System.Object; e: System.EventArgs);
begin
  FormatAlignRight;
end;

procedure TMainForm.FormatAlignCenterItem_Click(sender: System.Object; e: System.EventArgs);
begin
  FormatCenter;
end;

procedure TMainForm.FormatAlignLeftItem_Click(sender: System.Object; e: System.EventArgs);
begin
  FormatAlignLeft;
end;

procedure TMainForm.FormatBulletsItem_Click(sender: System.Object; e: System.EventArgs);
begin
  FormatBullets;
end;

procedure TMainForm.FontName_SelectionChangeCommitted(sender: System.Object;
    e: System.EventArgs);
begin
  if FUpdating then Exit;
  Editor.Focus;
  if Assigned(Editor.SelectionFont) then
    Editor.SelectionFont := System.Drawing.Font.Create(
      string(FontName.Items[FontName.SelectedIndex]), Editor.SelectionFont.Size,
      Editor.SelectionFont.Style)
  else
    Editor.SelectionFont := System.Drawing.Font.Create(
      string(FontName.Items[FontName.SelectedIndex]), 8.25);
end;

procedure TMainForm.FormatToolBar_ButtonClick(sender: System.Object; e: System.Windows.Forms.ToolBarButtonClickEventArgs);
begin
  if e.Button = BoldButton then
    FormatFontBold
  else
    if e.Button = ItalicButton then
      FormatFontItalic
    else
      if e.Button = UnderlineButton then
        FormatFontUnderline
      else
        if e.Button = AlignLeftButton then
          FormatAlignLeft
        else
          if e.Button = CenterButton then
            FormatCenter
          else
            if e.Button = AlignRightButton then
              FormatAlignRight
            else
              if e.Button = BulletsButton then
                FormatBullets;
end;

procedure TMainForm.FormatFontItem_Click(sender: System.Object; e: System.EventArgs);
begin
  FormatFont;
end;

procedure TMainForm.FormatDetectURLsItem_Click(sender: System.Object; e: System.EventArgs);
begin
  Editor.DetectUrls := not Editor.DetectUrls;
end;

procedure TMainForm.FormatWordWrapItem_Click(sender: System.Object; e: System.EventArgs);
begin
  Editor.WordWrap := not Editor.WordWrap;
end;

procedure TMainForm.ViewZoom50Item_Click(sender: System.Object; e: System.EventArgs);
begin
  SetZoom(0.5);
end;

procedure TMainForm.ViewZoom100Item_Click(sender: System.Object; e: System.EventArgs);
begin
  SetZoom(1);
end;

procedure TMainForm.ViewZoom200Item_Click(sender: System.Object; e: System.EventArgs);
begin
  SetZoom(2);
end;

procedure TMainForm.ToolBar_ButtonClick(sender: System.Object; e: System.Windows.Forms.ToolBarButtonClickEventArgs);
begin
  if e.Button = NewButton then
    FileNew
  else
    if e.Button = OpenButton then
      FileOpen
    else
      if e.Button = SaveButton then
        FileSave
      else
        if e.Button = PrintButton then
          FilePrint
        else
          if e.Button = PrintPreviewButton then
            FilePrintPreview
          else
            if e.Button = CutButton then
              EditCut
            else
              if e.Button = CopyButton then
                EditCopy
              else
                if e.Button = PasteButton then
                  EditPaste
                else
                  if e.Button = UndoButton then
                    EditUndo
                  else
                    if e.Button = RedoButton then
                      EditRedo
                    else
                      if e.Button = FindButton then
                        Find;
end;

procedure TMainForm.FileExitItem_Click(sender: System.Object; e: System.EventArgs);
begin
  Close;
end;

procedure TMainForm.FileSaveAsItem_Click(sender: System.Object; e: System.EventArgs);
begin
  FileSaveAs;
end;

procedure TMainForm.EditFindNextItem_Click(sender: System.Object; e: System.EventArgs);
begin
  FindNext;
end;

procedure TMainForm.EditFindItem_Click(sender: System.Object; e: System.EventArgs);
begin
  Find;
end;

procedure TMainForm.FileOpenItem_Click(sender: System.Object; e: System.EventArgs);
begin
  FileOpen;
end;

procedure TMainForm.FileSaveItem_Click(sender: System.Object; e: System.EventArgs);
begin
  FileSave;
end;

procedure TMainForm.EditRedoItem_Click(sender: System.Object; e: System.EventArgs);
begin
  EditRedo;
end;

procedure TMainForm.EditPasteItem_Click(sender: System.Object; e: System.EventArgs);
begin
  EditPaste;
end;

procedure TMainForm.EditCopyItem_Click(sender: System.Object; e: System.EventArgs);
begin
  EditCopy;
end;

procedure TMainForm.EditCutItem_Click(sender: System.Object; e: System.EventArgs);
begin
  EditCut;
end;

procedure TMainForm.EditUndoItem_Click(sender: System.Object; e: System.EventArgs);
begin
  EditUndo;
end;

procedure TMainForm.EditCut;
begin
  Editor.Cut;
end;

procedure TMainForm.EditCopy;
begin
  Editor.Copy;
end;

procedure TMainForm.EditPaste;
begin
  Editor.Paste;
end;

procedure TMainForm.EditUndo;
begin
  Editor.Undo;
end;

procedure TMainForm.EditRedo;
begin
  Editor.Redo;
end;

procedure TMainForm.FileNew;
begin
  if CanCloseCurrentFile then
  begin
    SetFileName(sUntitled);
    Editor.Clear;
    Editor.Modified := False;
  end;
end;

procedure TMainForm.FileNewItem_Click(sender: System.Object; e: System.EventArgs);
begin
  FileNew;
end;

procedure TMainForm.FileOpen;
begin
  if CanCloseCurrentFile then
  begin
    if OpenDialog.ShowDialog = System.Windows.Forms.DialogResult.OK then
    begin
      PerformFileOpen(OpenDialog.FileName);
      Editor.ReadOnly := OpenDialog.ReadOnlyChecked
        or ((System.IO.File.GetAttributes(OpenDialog.FileName) and FileAttributes.ReadOnly) = FileAttributes.ReadOnly);
    end;
  end;
end;

procedure TMainForm.FilePrintItem_Click(sender: System.Object; e: System.EventArgs);
begin
  FilePrintWithDialog;
end;

procedure TMainForm.FileSave;
begin
  try
    if FFileName = sUntitled then
      FileSaveAs
    else
    begin
      // TODO: Save as plaintext if needed
      if (Path.GetExtension(FFileName) = '.RTF')
        or (Path.GetExtension(FFileName) = '.rtf')  then
        Editor.SaveFile(FFileName)
      else
        Editor.SaveFile(FFileName, RichTextBoxStreamType.PlainText);
      Editor.Modified := False;
    end;
  except
    on E: Exception do
      MessageBox.Show(E.Message, 'Error');
  end;
end;

procedure TMainForm.FileSaveAs;
begin
  if SaveDialog.ShowDialog = System.Windows.Forms.DialogResult.OK then
  begin
    case SaveDialog.FilterIndex of
      1: Editor.SaveFile(SaveDialog.FileName);
      2: Editor.SaveFile(SaveDialog.FileName, RichTextBoxStreamType.PlainText);
    end;
    SetFileName(SaveDialog.FileName);
    Editor.Modified := False;
    Editor.ReadOnly := False;
  end;
end;

procedure TMainForm.Find;
begin
  with TFindForm.Create do
  begin
    SearchOptions := FFindOptions;
    SearchText := FFindText;
    if ShowDialog = System.Windows.Forms.DialogResult.OK then
    begin
      FFindText := SearchText;
      FFindOptions := SearchOptions;
      FFindPrevious := Editor.Find(FFindText, FFindOptions);
    end;
  end;
end;

procedure TMainForm.FindNext;
begin
  if (FFindOptions and RichTextBoxFinds.Reverse) <> RichTextBoxFinds.None then
    FFindPrevious := Editor.Find(FFindText, 0, FFindPrevious, FFindOptions)
  else
    FFindPrevious := Editor.Find(FFindText, FFindPrevious + 1, FFindOptions);
end;

procedure TMainForm.HelpInfoItem_Click(sender: System.Object; e: System.EventArgs);
begin
  with TInfoBox.Create do
    ShowDialog;
end;

procedure TMainForm.PerformFileOpen(const AFileName: string);
begin
  if (Path.GetExtension(AFileName) = '.RTF')
    or (Path.GetExtension(AFileName) = '.rtf')  then
    Editor.LoadFile(AFileName)
  else
    Editor.LoadFile(AFileName, RichTextBoxStreamType.PlainText);
  SetFileName(AFileName);
  Editor.Focus;
  Editor.Modified := False;
end;

procedure TMainForm.SetFileName(const AFileName: string);
begin
  FFileName := AFileName;
  Text := Path.GetFileName(AFileName) + ' - ' + Application.ProductName;
  PrintDocument.DocumentName := AFileName;
end;

procedure TMainForm.SetZoom(const AZoomFactor: SIngle);
begin
  Editor.ZoomFactor := AZoomFactor;
  ViewZoom200Item.Checked := AZoomFactor = 2;
  ViewZoom100Item.Checked := AZoomFactor = 1;
  ViewZoom50Item.Checked := AZoomFactor = 0.5;
end;

procedure TMainForm.FormatFont;
begin
  FontDialog.Color := Editor.SelectionColor;
  FontDialog.Font := Editor.SelectionFont;
  if FontDialog.ShowDialog = System.Windows.Forms.DialogResult.OK then
  begin
    Editor.SelectionFont := FontDialog.Font;
    Editor.SelectionColor := FontDialog.Color;
  end;
end;

procedure TMainForm.GetFontNames;
var
  i: Integer;
  InstalledFonts: System.Drawing.Text.InstalledFontCollection;
begin
  FontName.BeginUpdate;
  try
    FontName.Items.Clear;
    InstalledFonts := System.Drawing.Text.InstalledFontCollection.Create;
    for i := 0 to Length(InstalledFonts.Families) - 1 do
      FontName.Items.Add(InstalledFonts.Families[i].Name);
  finally
    FontName.EndUpdate;
  end;
end;

procedure TMainForm.FormatAlignLeft;
begin
  Editor.SelectionAlignment := System.Windows.Forms.HorizontalAlignment.Left;
end;

procedure TMainForm.FormatAlignRight;
begin
  Editor.SelectionAlignment := System.Windows.Forms.HorizontalAlignment.Right;
end;

procedure TMainForm.FormatBullets;
begin
  Editor.SelectionBullet := not Editor.SelectionBullet;
end;

procedure TMainForm.FormatCenter;
begin
  Editor.SelectionAlignment := System.Windows.Forms.HorizontalAlignment.Center;
end;

procedure TMainForm.FormatFontBold;
var
  NewFontStyle: FontStyle;
begin
  if FUpdating then Exit;
  Editor.Focus;
  if Editor.SelectionFont.Bold then
    NewFontStyle := Editor.SelectionFont.Style xor FontStyle.Bold
  else
    NewFontStyle := Editor.SelectionFont.Style or FontStyle.Bold;
  Editor.SelectionFont := System.Drawing.Font.Create(Editor.SelectionFont.Name,
    Editor.SelectionFont.Size, NewFontStyle);
end;

procedure TMainForm.FormatFontItalic;
var
  NewFontStyle: FontStyle;
begin
  if FUpdating then Exit;
  Editor.Focus;
  if Editor.SelectionFont.Italic then
    NewFontStyle := Editor.SelectionFont.Style xor FontStyle.Italic
  else
    NewFontStyle := Editor.SelectionFont.Style or FontStyle.Italic;
  Editor.SelectionFont := System.Drawing.Font.Create(Editor.SelectionFont.Name,
    Editor.SelectionFont.Size, NewFontStyle);
end;

procedure TMainForm.FormatFontUnderline;
var
  NewFontStyle: FontStyle;
begin
  if FUpdating then Exit;
  Editor.Focus;
  if Editor.SelectionFont.Underline then
    NewFontStyle := Editor.SelectionFont.Style xor FontStyle.Underline
  else
    NewFontStyle := Editor.SelectionFont.Style or FontStyle.Underline;
  Editor.SelectionFont := System.Drawing.Font.Create(Editor.SelectionFont.Name,
    Editor.SelectionFont.Size, NewFontStyle);
end;

procedure TMainForm.FilePageSetup;
begin
  PageSetupDialog.ShowDialog;
end;

procedure TMainForm.FilePrint;
begin
  PrintDocument.Print;
end;

procedure TMainForm.FilePrintWithDialog;
begin
  if PrintDialog.ShowDialog = System.Windows.Forms.DialogResult.OK then
	 	FilePrint;
end;

procedure TMainForm.FilePrintPreview;
begin
	PrintPreviewDialog.ShowDialog;
end;

end.





