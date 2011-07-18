{ *********************************************************************** }
{                                                                         }
{ Copyright (c) 2003 Borland Software Corporation                         }
{                                                                         }
{ Written by: Rick Beerendonk (rick@beerendonk.com)                       }
{             Microloon BV                                                }
{             The Netherlands                                             }
{                                                                         }
{ I'd like to thank Mike Bax, Patrick van Logchem, Hans Veltman,          }
{   Arjan Jansen, Arnim Mulder, Micha Somers, Bob Swart (www.drbob42.net),}
{   Jeetinder Ramlal, Mark Sleper, Fred de Wagenaar & Piet Weijers        }
{                                                                         }
{ ----------------------------------------------------------------------- }
{ THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY  }
{ KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE     }
{ IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A              }
{ PARTICULAR PURPOSE.                                                     }
{                                                                         }
{ *********************************************************************** }

unit Borland.Examples.Delphi.RichTextBox.Info;

interface

uses
  System.Collections,
  System.ComponentModel,
  System.Data,
  System.Drawing,
  System.Resources,
  System.Windows.Forms;

type
  TInfoBox = class(System.Windows.Forms.Form)
  {$REGION 'Designer Managed Code'}
  strict private
    /// <summary>
    /// Required designer variable.
    /// </summary>
    Components: System.ComponentModel.Container;
    ProductLabel: System.Windows.Forms.Label;
    CopyrightLabel: System.Windows.Forms.Label;
    OKButton: System.Windows.Forms.Button;
    WebsiteLabel: System.Windows.Forms.LinkLabel;
    OperatingSystemLabel: System.Windows.Forms.Label;
    PictureBox1: System.Windows.Forms.PictureBox;
    Panel1: System.Windows.Forms.Panel;
    DotNetFrameworkVersion: System.Windows.Forms.Label;
    WrittenByLabel: System.Windows.Forms.Label;
    WrittenByEMail: System.Windows.Forms.LinkLabel;
    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    procedure InitializeComponent;
    procedure WebsiteLabel_LinkClicked(sender: System.Object; e: System.Windows.Forms.LinkLabelLinkClickedEventArgs);
    procedure WrittenByEMail_LinkClicked(sender: System.Object; e: System.Windows.Forms.LinkLabelLinkClickedEventArgs);
  {$ENDREGION}
  strict protected
    /// <summary>
    /// Clean up any resources being used.
    /// </summary>
    procedure Dispose(Disposing: Boolean); override;
  public
    constructor Create;
  end;

  [assembly: RuntimeRequiredAttribute(TypeOf(TInfoBox))]

implementation

uses
  System.Diagnostics,
  System.Globalization;

{$REGION 'Windows Form Designer generated code'}
/// <summary>
/// Required method for Designer support - do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TInfoBox.InitializeComponent;
var
  resources: System.Resources.ResourceManager;
begin
  resources := System.Resources.ResourceManager.Create(TypeOf(TInfoBox));
  Self.ProductLabel := System.Windows.Forms.Label.Create;
  Self.CopyrightLabel := System.Windows.Forms.Label.Create;
  Self.OKButton := System.Windows.Forms.Button.Create;
  Self.WebsiteLabel := System.Windows.Forms.LinkLabel.Create;
  Self.OperatingSystemLabel := System.Windows.Forms.Label.Create;
  Self.PictureBox1 := System.Windows.Forms.PictureBox.Create;
  Self.Panel1 := System.Windows.Forms.Panel.Create;
  Self.DotNetFrameworkVersion := System.Windows.Forms.Label.Create;
  Self.WrittenByLabel := System.Windows.Forms.Label.Create;
  Self.WrittenByEMail := System.Windows.Forms.LinkLabel.Create;
  Self.SuspendLayout;
  // 
  // ProductLabel
  // 
  Self.ProductLabel.AutoSize := True;
  Self.ProductLabel.Location := System.Drawing.Point.Create(72, 24);
  Self.ProductLabel.Name := 'ProductLabel';
  Self.ProductLabel.Size := System.Drawing.Size.Create(293, 16);
  Self.ProductLabel.TabIndex := 1;
  Self.ProductLabel.Text := 'Delphi™ Rich Text Box Control Demo for Microsoft® .NET';
  // 
  // CopyrightLabel
  // 
  Self.CopyrightLabel.AutoSize := True;
  Self.CopyrightLabel.Location := System.Drawing.Point.Create(72, 48);
  Self.CopyrightLabel.Name := 'CopyrightLabel';
  Self.CopyrightLabel.Size := System.Drawing.Size.Create(81, 16);
  Self.CopyrightLabel.TabIndex := 2;
  Self.CopyrightLabel.Text := 'CopyrightLabel';
  // 
  // OKButton
  // 
  Self.OKButton.Anchor := (System.Windows.Forms.AnchorStyles((System.Windows.Forms.AnchorStyles.Bottom 
      or System.Windows.Forms.AnchorStyles.Right)));
  Self.OKButton.DialogResult := System.Windows.Forms.DialogResult.OK;
  Self.OKButton.Location := System.Drawing.Point.Create(296, 200);
  Self.OKButton.Name := 'OKButton';
  Self.OKButton.TabIndex := 0;
  Self.OKButton.Text := 'OK';
  // 
  // WebsiteLabel
  // 
  Self.WebsiteLabel.Anchor := (System.Windows.Forms.AnchorStyles((System.Windows.Forms.AnchorStyles.Bottom 
      or System.Windows.Forms.AnchorStyles.Left)));
  Self.WebsiteLabel.AutoSize := True;
  Self.WebsiteLabel.Location := System.Drawing.Point.Create(8, 200);
  Self.WebsiteLabel.Name := 'WebsiteLabel';
  Self.WebsiteLabel.Size := System.Drawing.Size.Create(94, 16);
  Self.WebsiteLabel.TabIndex := 6;
  Self.WebsiteLabel.TabStop := True;
  Self.WebsiteLabel.Text := 'www.borland.com';
  Include(Self.WebsiteLabel.LinkClicked, Self.WebsiteLabel_LinkClicked);
  // 
  // OperatingSystemLabel
  // 
  Self.OperatingSystemLabel.AutoSize := True;
  Self.OperatingSystemLabel.Location := System.Drawing.Point.Create(72, 160);
  Self.OperatingSystemLabel.Name := 'OperatingSystemLabel';
  Self.OperatingSystemLabel.Size := System.Drawing.Size.Create(120, 16);
  Self.OperatingSystemLabel.TabIndex := 5;
  Self.OperatingSystemLabel.Text := 'OperatingSystemLabel';
  // 
  // PictureBox1
  // 
  Self.PictureBox1.Image := (System.Drawing.Image(resources.GetObject('PictureBox1.Image')));
  Self.PictureBox1.Location := System.Drawing.Point.Create(16, 16);
  Self.PictureBox1.Name := 'PictureBox1';
  Self.PictureBox1.Size := System.Drawing.Size.Create(43, 48);
  Self.PictureBox1.SizeMode := System.Windows.Forms.PictureBoxSizeMode.AutoSize;
  Self.PictureBox1.TabIndex := 5;
  Self.PictureBox1.TabStop := False;
  // 
  // Panel1
  // 
  Self.Panel1.Anchor := (System.Windows.Forms.AnchorStyles(((System.Windows.Forms.AnchorStyles.Top 
      or System.Windows.Forms.AnchorStyles.Left) or System.Windows.Forms.AnchorStyles.Right)));
  Self.Panel1.BorderStyle := System.Windows.Forms.BorderStyle.Fixed3D;
  Self.Panel1.Location := System.Drawing.Point.Create(72, 120);
  Self.Panel1.Name := 'Panel1';
  Self.Panel1.Size := System.Drawing.Size.Create(296, 4);
  Self.Panel1.TabIndex := 3;
  // 
  // DotNetFrameworkVersion
  // 
  Self.DotNetFrameworkVersion.AutoSize := True;
  Self.DotNetFrameworkVersion.Location := System.Drawing.Point.Create(72, 136);
  Self.DotNetFrameworkVersion.Name := 'DotNetFrameworkVersion';
  Self.DotNetFrameworkVersion.Size := System.Drawing.Size.Create(135, 16);
  Self.DotNetFrameworkVersion.TabIndex := 4;
  Self.DotNetFrameworkVersion.Text := 'DotNetFrameworkVersion';
  // 
  // WrittenByLabel
  // 
  Self.WrittenByLabel.AutoSize := True;
  Self.WrittenByLabel.Location := System.Drawing.Point.Create(72, 72);
  Self.WrittenByLabel.Name := 'WrittenByLabel';
  Self.WrittenByLabel.Size := System.Drawing.Size.Create(55, 16);
  Self.WrittenByLabel.TabIndex := 7;
  Self.WrittenByLabel.Text := 'Written by';
  // 
  // WrittenByEMail
  // 
  Self.WrittenByEMail.AutoSize := True;
  Self.WrittenByEMail.Location := System.Drawing.Point.Create(128, 72);
  Self.WrittenByEMail.Name := 'WrittenByEMail';
  Self.WrittenByEMail.Size := System.Drawing.Size.Create(90, 16);
  Self.WrittenByEMail.TabIndex := 8;
  Self.WrittenByEMail.TabStop := True;
  Self.WrittenByEMail.Text := 'Rick Beerendonk';
  Include(Self.WrittenByEMail.LinkClicked, Self.WrittenByEMail_LinkClicked);
  // 
  // TInfoBox
  // 
  Self.AcceptButton := Self.OKButton;
  Self.AutoScaleBaseSize := System.Drawing.Size.Create(5, 13);
  Self.CancelButton := Self.OKButton;
  Self.ClientSize := System.Drawing.Size.Create(378, 232);
  Self.ControlBox := False;
  Self.Controls.Add(Self.WrittenByEMail);
  Self.Controls.Add(Self.WrittenByLabel);
  Self.Controls.Add(Self.DotNetFrameworkVersion);
  Self.Controls.Add(Self.OperatingSystemLabel);
  Self.Controls.Add(Self.WebsiteLabel);
  Self.Controls.Add(Self.CopyrightLabel);
  Self.Controls.Add(Self.ProductLabel);
  Self.Controls.Add(Self.Panel1);
  Self.Controls.Add(Self.PictureBox1);
  Self.Controls.Add(Self.OKButton);
  Self.FormBorderStyle := System.Windows.Forms.FormBorderStyle.FixedSingle;
  Self.MaximizeBox := False;
  Self.MinimizeBox := False;
  Self.Name := 'TInfoBox';
  Self.ShowInTaskbar := False;
  Self.StartPosition := System.Windows.Forms.FormStartPosition.CenterParent;
  Self.Text := 'Info Rich Text Box Control Demo';
  Self.ResumeLayout(False);
end;
{$ENDREGION}

procedure TInfoBox.Dispose(Disposing: Boolean);
begin
  if Disposing then
  begin
    if Components <> nil then
      Components.Dispose();
  end;
  inherited Dispose(Disposing);
end;

constructor TInfoBox.Create;
begin
  inherited Create;
  //
  // Required for Windows Form Designer support
  //
  InitializeComponent;
  //
  // TODO: Add any constructor code after InitializeComponent call
  //
  CopyrightLabel.Text := System.Diagnostics.FileVersionInfo.GetVersionInfo(Application.ExecutablePath).LegalCopyright;
  DotNetFrameworkVersion.Text := 'Microsoft® .NET Framework: ' + Environment.Version.ToString;
  OperatingSystemLabel.Text := 'Operating System: ' + Environment.OSVersion.ToString;
end;

procedure TInfoBox.WrittenByEMail_LinkClicked(sender: System.Object; e: System.Windows.Forms.LinkLabelLinkClickedEventArgs);
begin
  Process.Create.Start('mailto:rick@beerendonk.com?subject=Delphi Example "Rich Text Box Demo"');
end;

procedure TInfoBox.WebsiteLabel_LinkClicked(sender: System.Object; e: System.Windows.Forms.LinkLabelLinkClickedEventArgs);
begin
  Process.Create.Start('http://www.borland.com');
end;

end.
