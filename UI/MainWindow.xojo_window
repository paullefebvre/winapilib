#tag DesktopWindow
Begin DesktopWindow MainWindow
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   0
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   HasTitleBar     =   True
   Height          =   400
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   2093424639
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "WinAPILib"
   Type            =   0
   Visible         =   True
   Width           =   600
   Begin DesktopButton ScreenCaptureButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Screen Capture"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   19
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   107
   End
   Begin DesktopSlider OpacitySlider
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LineStep        =   1
      LiveScroll      =   False
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Maximum         =   100
      Minimum         =   20
      PageStep        =   20
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   0
      Top             =   173
      Transparent     =   True
      Value           =   100
      Visible         =   True
      Width           =   100
   End
   Begin DesktopLabel Label1
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Opacity"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   148
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopLabel CPUUsageLabel
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "CPUUsage"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   222
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   201
   End
   Begin Timer CPUUsageTimer
      Enabled         =   True
      Index           =   -2147483648
      LockedInPosition=   False
      Mode            =   2
      Period          =   1000
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin WinAPILib.CommandLink CommandLink1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   False
      Height          =   60
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   12
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   1
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   266
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   250
   End
   Begin DesktopButton FlashButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Flash"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   466
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   19
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   114
   End
   Begin DesktopButton TopmostToggleButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Toggle Topmost"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   466
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   51
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   114
   End
   Begin DesktopButton SystemInfoButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "System Info"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   51
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   107
   End
   Begin DesktopButton OSVersionButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "OS Version Info"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   85
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   107
   End
   Begin DesktopButton LaunchAndWaitButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Launch and Wait Notepad"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   412
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   85
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   168
   End
   Begin DesktopButton SelectFolderButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Minimalistic Select Folder"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   412
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   119
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   168
   End
   Begin DesktopCheckBox LimitSelectFolderCheckBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Limit to Favorites"
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   412
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   153
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   177
   End
   Begin DesktopButton SlideButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Slide"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   485
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   281
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   95
   End
   Begin DesktopButton collapseButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Collapse"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   378
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   313
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   95
   End
   Begin DesktopButton ExpandButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Expand"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   485
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   313
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   95
   End
   Begin DesktopButton FadeButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Fade"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   378
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   345
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   95
   End
   Begin DesktopButton RollButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Roll"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   378
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   280
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   95
   End
   Begin DesktopLabel AnimateWindowLabel
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   378
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "AnimateWindow Examples"
      TextAlign       =   3
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   222
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   202
   End
   Begin DesktopTextField animateSpeedTextfield
      AcceptTabs      =   False
      Alignment       =   3
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   378
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "80"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   247
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   49
   End
   Begin DesktopLabel AnimateWindowSpeedLabel
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   439
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Speed (MS)"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   248
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   141
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Property, Flags = &h0
		AnimationTestWindow As Animate_Window
	#tag EndProperty


#tag EndWindowCode

#tag Events ScreenCaptureButton
	#tag Event
		Sub Pressed()
		  Var w As New ScreenCaptureWindow
		  w.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OpacitySlider
	#tag Event
		Sub ValueChanged()
		  Var newOpacity As CGFloat = Me.Value / Me.MaximumValue
		  
		  // Don't want to go 100% transparent since the user
		  // couldn't change the value back! So limit it to 10%.
		  newOpacity = Max(0.10, newOpacity)
		  
		  // Set the window's opacity
		  // (Defined as an extension method for Window in WindowExtensions module.)
		  WinAPILib.Window.SetOpacity(Self, newOpacity)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CPUUsageTimer
	#tag Event
		Sub Action()
		  Var cpu As Integer = WinAPILib.SystemInfo.CPUUsage
		  CPUUsageLabel.Text = "CPU Usage: " + cpu.ToString + "%"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CommandLink1
	#tag Event
		Sub Open()
		  Me.SetText(Me.Name)
		  Me.SetNote("Command note")
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  MessageBox("Action")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FlashButton
	#tag Event
		Sub Pressed()
		  WinAPILib.Window.Flash(Self)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TopmostToggleButton
	#tag Event
		Sub Pressed()
		  WinAPILib.Window.AlwaysTopmost(Self) = Not WinAPILib.Window.AlwaysTopmost(Self)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SystemInfoButton
	#tag Event
		Sub Pressed()
		  Var w As New SystemInfoWindow
		  w.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OSVersionButton
	#tag Event
		Sub Pressed()
		  Var w As New OSVersionInfoWindow
		  w.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LaunchAndWaitButton
	#tag Event
		Sub Pressed()
		  Var notepad As FolderItem = SpecialFolder.Windows.Child("Notepad.exe")
		  If notepad.Exists Then
		    WinAPILib.FileIO.LaunchAndWait(notepad)
		    MessageBox("Notepad closed.")
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectFolderButton
	#tag Event
		Sub Pressed()
		  Var d As New WinAPILib.SelectFolderDialog
		  d.PromptText = "Find a folder"
		  If LimitSelectFolderCheckBox.Value Then
		    d.InitialDirectory = WinAPILib.SelectFolderDialog.RootFolders.CSIDL_FAVORITES
		  End If
		  Var f As FolderItem = d.ShowModal
		  
		  If f <> Nil Then MessageBox(f.NativePath)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SlideButton
	#tag Event
		Sub Pressed()
		  #If TargetWindows Then
		    // SLIDE EXAMPLE
		    AnimationTestWindow = New Animate_Window
		    AnimationTestWindow.Title = "Slide Window Example"
		    
		    Var animationTimeInt As Integer = animateSpeedTextfield.Text.ToDouble
		    Var windowHandleInt As Ptr = AnimationTestWindow.Handle
		    Var activateWindowInt As Integer = WinAPILib.AnimateWindow.AW_ACTIVATE
		    Var slideEffectInt As Integer = WinAPILib.AnimateWindow.AW_HOR_POSITIVE
		    
		    Var activateInt As Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, activateWindowInt)
		    Var resultInt As Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, slideEffectInt)
		  #EndIf
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events collapseButton
	#tag Event
		Sub Pressed()
		  #If TargetWindows Then
		    // COLLAPSE EXAMPLE
		    AnimationTestWindow = New Animate_Window
		    AnimationTestWindow.Title = "Collapse Window Example"
		    
		    Var animationTimeInt As Integer = animateSpeedTextfield.Text.ToDouble
		    Var windowHandleInt As Ptr = AnimationTestWindow.Handle
		    Var activateWindowInt As Integer = WinAPILib.AnimateWindow.AW_ACTIVATE
		    Var collapseInt As Integer = WinAPILib.AnimateWindow.AW_HIDE
		    
		    Var activateInt As Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, activateWindowInt)
		    Var resultInt As Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, collapseInt)
		  #EndIf
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExpandButton
	#tag Event
		Sub Pressed()
		  #If TargetWindows Then
		    // EXPAND EXAMPLE
		    AnimationTestWindow = New Animate_Window
		    AnimationTestWindow.Title = "Expand Window Example"
		    
		    Var animationTimeInt As Integer = animateSpeedTextfield.Text.ToDouble
		    Var windowHandleInt As Ptr = AnimationTestWindow.Handle
		    Var activateWindowInt As Integer = WinAPILib.AnimateWindow.AW_ACTIVATE
		    Var expandEffectInt As Integer = WinAPILib.AnimateWindow.AW_CENTER
		    
		    Var activateInt As Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, activateWindowInt)
		    Var resultInt As Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, expandEffectInt)
		  #EndIf
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FadeButton
	#tag Event
		Sub Pressed()
		  #If TargetWindows Then
		    // FADE EXAMPLE
		    AnimationTestWindow = New Animate_Window
		    AnimationTestWindow.Title = "Fade Window Example"
		    
		    Var animationTimeInt As Integer = animateSpeedTextfield.Text.ToDouble
		    Var windowHandleInt As Ptr = AnimationTestWindow.Handle
		    Var activateWindowInt As Integer = WinAPILib.AnimateWindow.AW_ACTIVATE
		    Var fadeEffectInt As Integer = WinAPILib.AnimateWindow.AW_BLEND
		    
		    Var activateInt As Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, activateWindowInt)
		    Var resultInt As Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, fadeEffectInt)
		  #EndIf
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RollButton
	#tag Event
		Sub Pressed()
		  #If TargetWindows Then
		    // ROLL EXAMPLE
		    AnimationTestWindow = New Animate_Window
		    AnimationTestWindow.Title = "Roll Window Example"
		    
		    Var animationTimeInt As Integer = animateSpeedTextfield.Text.ToDouble
		    Var windowHandleInt As Ptr = AnimationTestWindow.Handle
		    Var activateWindowInt As Integer = WinAPILib.AnimateWindow.AW_ACTIVATE
		    Var rollEffectInt As Integer = WinAPILib.AnimateWindow.AW_HOR_NEGATIVE
		    
		    Var activateInt As Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, activateWindowInt)
		    Var resultInt As Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, rollEffectInt)
		  #EndIf
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events animateSpeedTextfield
	#tag Event
		Function KeyDown(key As String) As Boolean
		  // ONLY ALLOW DIGITS
		  Select Case Asc(Key)
		  Case 8
		    // ALLOW BACKSPACE
		    
		  Case 10, 13
		    // ALLOW ENTER
		    
		  Case 48 to 57
		    // ALLOW NUMBERS
		    
		  Else
		    // BLOCK THE REST
		    Return True
		    
		  End Select
		End Function
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
