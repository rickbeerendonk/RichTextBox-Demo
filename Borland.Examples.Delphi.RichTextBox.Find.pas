{ *********************************************************************** }
{                                                                         }
{ Copyright (c) 2003 Borland Software Corporation                         }
{                                                                         }
{ Written by: Rick Beerendonk (rick@beerendonk.com)                       }
{             Microloon BV                                                }
{             The Netherlands                                             }
{                                                                         }
{ ----------------------------------------------------------------------- }
{ THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY  }
{ KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE     }
{ IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A              }
{ PARTICULAR PURPOSE.                                                     }
{                                                                         }
{ *********************************************************************** }

unit Borland.Examples.Delphi.RichTextBox.Find;

interface

uses
  System.Data,
  System.Drawing,
  System.Collections,
  System.ComponentModel,
  System.Windows.Forms;

type
  TFindForm = class(System.Windows.Forms.Form)
  {$REGION 'Designer Managed Code'}
  strict private
    /// <summary>
    /// Required designer variable.
    /// </summary>
    Components: System.ComponentModel.Container;
    FindButton: System.Windows.Forms.Button;
    CancelButton: System.Windows.Forms.Button;
    FindTextBox: System.Windows.Forms.TextBox;
    FindLabel: System.Windows.Forms.Label;
    MatchCaseCheckBox: System.Windows.Forms.CheckBox;
    ReverseCheckBox: System.Windows.Forms.CheckBox;
    MatchWholeWordOnlyCheckBox: System.Windows.Forms.CheckBox;
    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    procedure InitializeComponent;
  private
    function GetSearchText: string;
    procedure SetSearchText(const Value: string);
    function GetSearchOptions: RichTextBoxFinds;
    procedure SetSearchOptions(const Value: RichTextBoxFinds);
  {$ENDREGION}
  strict protected
    /// <summary>
    /// Clean up any resources being used.
    /// </summary>
    procedure Dispose(Disposing: Boolean); override;
  public
    constructor Create;
    property SearchOptions: RichTextBoxFinds read GetSearchOptions write SetSearchOptions;
    property SearchText: string read GetSearchText write SetSearchText;
  end;

  [assembly: RuntimeRequiredAttribute(TypeOf(TFindForm))]

implementation

{$REGION 'Windows Form Designer generated code'}
/// <summary>
/// Required method for Designer support - do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TFindForm.InitializeComponent;
begin
  Self.FindButton := System.Windows.Forms.Button.Create;
  Self.CancelButton := System.Windows.Forms.Button.Create;
  Self.FindTextBox := System.Windows.Forms.TextBox.Create;
  Self.FindLabel := System.Windows.Forms.Label.Create;
  Self.MatchCaseCheckBox := System.Windows.Forms.CheckBox.Create;
  Self.ReverseCheckBox := System.Windows.Forms.CheckBox.Create;
  Self.MatchWholeWordOnlyCheckBox := System.Windows.Forms.CheckBox.Create;
  Self.SuspendLayout;
  // 
  // FindButton
  // 
  Self.FindButton.Anchor := (System.Windows.Forms.AnchorStyles((System.Windows.Forms.AnchorStyles.Bottom 
      or System.Windows.Forms.AnchorStyles.Right)));
  Self.FindButton.DialogResult := System.Windows.Forms.DialogResult.OK;
  Self.FindButton.Location := System.Drawing.Point.Create(152, 128);
  Self.FindButton.Name := 'FindButton';
  Self.FindButton.TabIndex := 5;
  Self.FindButton.Text := 'Find';
  // 
  // CancelButton
  // 
  Self.CancelButton.Anchor := (System.Windows.Forms.AnchorStyles((System.Windows.Forms.AnchorStyles.Bottom 
      or System.Windows.Forms.AnchorStyles.Right)));
  Self.CancelButton.DialogResult := System.Windows.Forms.DialogResult.Cancel;
  Self.CancelButton.Location := System.Drawing.Point.Create(240, 128);
  Self.CancelButton.Name := 'CancelButton';
  Self.CancelButton.TabIndex := 6;
  Self.CancelButton.Text := 'Cancel';
  // 
  // FindTextBox
  // 
  Self.FindTextBox.Anchor := (System.Windows.Forms.AnchorStyles(((System.Windows.Forms.AnchorStyles.Top 
      or System.Windows.Forms.AnchorStyles.Left) or System.Windows.Forms.AnchorStyles.Right)));
  Self.FindTextBox.Location := System.Drawing.Point.Create(72, 16);
  Self.FindTextBox.Name := 'FindTextBox';
  Self.FindTextBox.Size := System.Drawing.Size.Create(240, 20);
  Self.FindTextBox.TabIndex := 1;
  Self.FindTextBox.Text := '';
  // 
  // FindLabel
  // 
  Self.FindLabel.Location := System.Drawing.Point.Create(8, 16);
  Self.FindLabel.Name := 'FindLabel';
  Self.FindLabel.Size := System.Drawing.Size.Create(64, 20);
  Self.FindLabel.TabIndex := 0;
  Self.FindLabel.Text := 'Fi&nd what:';
  Self.FindLabel.TextAlign := System.Drawing.ContentAlignment.MiddleLeft;
  // 
  // MatchCaseCheckBox
  // 
  Self.MatchCaseCheckBox.Location := System.Drawing.Point.Create(72, 48);
  Self.MatchCaseCheckBox.Name := 'MatchCaseCheckBox';
  Self.MatchCaseCheckBox.Size := System.Drawing.Size.Create(184, 24);
  Self.MatchCaseCheckBox.TabIndex := 2;
  Self.MatchCaseCheckBox.Text := 'Match &case';
  // 
  // ReverseCheckBox
  // 
  Self.ReverseCheckBox.Location := System.Drawing.Point.Create(72, 96);
  Self.ReverseCheckBox.Name := 'ReverseCheckBox';
  Self.ReverseCheckBox.Size := System.Drawing.Size.Create(184, 24);
  Self.ReverseCheckBox.TabIndex := 3;
  Self.ReverseCheckBox.Text := '&Reverse';
  // 
  // MatchWholeWordOnlyCheckBox
  // 
  Self.MatchWholeWordOnlyCheckBox.Location := System.Drawing.Point.Create(72, 72);
  Self.MatchWholeWordOnlyCheckBox.Name := 'MatchWholeWordOnlyCheckBox';
  Self.MatchWholeWordOnlyCheckBox.Size := System.Drawing.Size.Create(184, 24);
  Self.MatchWholeWordOnlyCheckBox.TabIndex := 4;
  Self.MatchWholeWordOnlyCheckBox.Text := 'Match &whole word only';
  // 
  // TFindForm
  // 
  Self.AcceptButton := Self.FindButton;
  Self.AutoScaleBaseSize := System.Drawing.Size.Create(5, 13);
  Self.ClientSize := System.Drawing.Size.Create(322, 160);
  Self.ControlBox := False;
  Self.Controls.Add(Self.MatchWholeWordOnlyCheckBox);
  Self.Controls.Add(Self.ReverseCheckBox);
  Self.Controls.Add(Self.MatchCaseCheckBox);
  Self.Controls.Add(Self.FindLabel);
  Self.Controls.Add(Self.FindTextBox);
  Self.Controls.Add(Self.CancelButton);
  Self.Controls.Add(Self.FindButton);
  Self.FormBorderStyle := System.Windows.Forms.FormBorderStyle.FixedDialog;
  Self.MaximizeBox := False;
  Self.MinimizeBox := False;
  Self.Name := 'TFindForm';
  Self.ShowInTaskbar := False;
  Self.StartPosition := System.Windows.Forms.FormStartPosition.CenterParent;
  Self.Text := 'Find';
  Self.ResumeLayout(False);
end;
{$ENDREGION}

procedure TFindForm.Dispose(Disposing: Boolean);
begin
  if Disposing then
  begin
    if Components <> nil then
      Components.Dispose();
  end;
  inherited Dispose(Disposing);
end;

constructor TFindForm.Create;
begin
  inherited Create;
  //
  // Required for Windows Form Designer support
  //
  InitializeComponent;
  //
  // TODO: Add any constructor code after InitializeComponent call
  //
end;

function TFindForm.GetSearchText: string;
begin
  Result := FindTextBox.Text;
end;

procedure TFindForm.SetSearchText(const Value: string);
begin
  FindTextBox.Text := Value;
end;

function TFindForm.GetSearchOptions: RichTextBoxFinds;
begin
  Result := System.Windows.Forms.RichTextBoxFinds.None;
  if MatchCaseCheckBox.Checked then
    Result := Result or System.Windows.Forms.RichTextBoxFinds.MatchCase;
  if ReverseCheckBox.Checked then
    Result := Result or System.Windows.Forms.RichTextBoxFinds.Reverse;
  if MatchWholeWordOnlyCheckBox.Checked then
    Result := Result or System.Windows.Forms.RichTextBoxFinds.WholeWord;
end;

procedure TFindForm.SetSearchOptions(const Value: RichTextBoxFinds);
begin
  MatchCaseCheckBox.Checked := (Value and RichTextBoxFinds.MatchCase) <> RichTextBoxFinds.None;
  ReverseCheckBox.Checked := (Value and RichTextBoxFinds.Reverse) <> RichTextBoxFinds.None;
  MatchWholeWordOnlyCheckBox.Checked := (Value and RichTextBoxFinds.WholeWord) <> RichTextBoxFinds.None;
end;

end.
