#tag Window
Begin Window MainWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   2093424639
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "WinAPILib"
   Visible         =   True
   Width           =   600
   Begin PushButton ScreenCaptureButton
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
   Begin Slider OpacitySlider
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
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
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
   Begin Label CPUUsageLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
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
   Begin PushButton FlashButton
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
   Begin PushButton TopmostToggleButton
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
   Begin PushButton SystemInfoButton
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
   Begin PushButton PushButton1
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
   Begin PushButton LaunchAndWaitButton
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
   Begin PushButton SelectFolderButton
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
   Begin CheckBox LimitSelectFolderCheckBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Limit to Favorites"
      DataField       =   ""
      DataSource      =   ""
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
   Begin PushButton slideButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
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
   Begin PushButton collapseButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
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
   Begin PushButton expandButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
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
   Begin PushButton fadeButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
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
   Begin PushButton rollButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
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
   Begin Label AnimateWindowLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
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
      TextAlign       =   2
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
   Begin TextField animateSpeedTextfield
      AcceptTabs      =   False
      Alignment       =   "3"
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
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
   Begin Label AnimateWindowSpeedLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
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
#tag EndWindow

#tag WindowCode
	#tag Property, Flags = &h0
		AnimationTestWindow As Animate_Window
	#tag EndProperty


#tag EndWindowCode

#tag Events ScreenCaptureButton
	#tag Event
		Sub Action()
		  Dim w As New ScreenCaptureWindow
		  w.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OpacitySlider
	#tag Event
		Sub ValueChanged()
		  Dim newOpacity As CGFloat = Me.Value / Me.Maximum
		  
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
		  Dim cpu As Integer = WinAPILib.SystemInfo.CPUUsage
		  CPUUsageLabel.Text = "CPU Usage: " + cpu.ToText + "%"
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
		  MsgBox("Action")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FlashButton
	#tag Event
		Sub Action()
		  WinAPILib.Window.Flash(Self)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TopmostToggleButton
	#tag Event
		Sub Action()
		  WinAPILib.Window.AlwaysTopmost(Self) = Not WinAPILib.Window.AlwaysTopmost(Self)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SystemInfoButton
	#tag Event
		Sub Action()
		  Dim w As New SystemInfoWindow
		  w.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  Dim w As New OSVersionInfoWindow
		  w.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LaunchAndWaitButton
	#tag Event
		Sub Action()
		  Dim notepad As FolderItem = SpecialFolder.Windows.Child("Notepad.exe")
		  If notepad.Exists Then
		    WinAPILib.FileIO.LaunchAndWait(notepad)
		    MsgBox("Notepad closed.")
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectFolderButton
	#tag Event
		Sub Action()
		  dim d as new WinAPILib.SelectFolderDialog
		  d.PromptText="Find a folder"
		  if LimitSelectFolderCheckBox.Value then
		    d.InitialDirectory=WinAPILib.SelectFolderDialog.RootFolders.CSIDL_FAVORITES
		  end if
		  dim f as FolderItem=d.ShowModal
		  
		  if f<>nil then MsgBox f.NativePath
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events slideButton
	#tag Event
		Sub Action()
		  #If TargetWindows Then
		    // SLIDE EXAMPLE
		    AnimationTestWindow = New Animate_Window
		    AnimationTestWindow.Title = "Slide Window Example"
		    
		    Var animationTimeInt as Integer = animateSpeedTextfield.Text.ToDouble
		    Var windowHandleInt as Integer = AnimationTestWindow.Handle
		    Var activateWindowInt as Integer = WinAPILib.AnimateWindow.AW_ACTIVATE
		    Var slideEffectInt as Integer = WinAPILib.AnimateWindow.AW_HOR_POSITIVE
		    
		    Var activateInt as Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, activateWindowInt)
		    Var resultInt as Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, slideEffectInt)
		  #endif
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events collapseButton
	#tag Event
		Sub Action()
		  #If TargetWindows Then
		    // COLLAPSE EXAMPLE
		    AnimationTestWindow = New Animate_Window
		    AnimationTestWindow.Title = "Collapse Window Example"
		    
		    Var animationTimeInt as Integer = animateSpeedTextfield.Text.ToDouble
		    Var windowHandleInt as Integer = AnimationTestWindow.Handle
		    Var activateWindowInt as Integer = WinAPILib.AnimateWindow.AW_ACTIVATE
		    Var collapseInt as Integer = WinAPILib.AnimateWindow.AW_HIDE
		    
		    Var activateInt as Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, activateWindowInt)
		    Var resultInt as Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, collapseInt)
		  #endif
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events expandButton
	#tag Event
		Sub Action()
		  #If TargetWindows Then
		    // EXPAND EXAMPLE
		    AnimationTestWindow = New Animate_Window
		    AnimationTestWindow.Title = "Expand Window Example"
		    
		    Var animationTimeInt as Integer = animateSpeedTextfield.Text.ToDouble
		    Var windowHandleInt as Integer = AnimationTestWindow.Handle
		    Var activateWindowInt as Integer = WinAPILib.AnimateWindow.AW_ACTIVATE
		    Var expandEffectInt as Integer = WinAPILib.AnimateWindow.AW_CENTER
		    
		    Var activateInt as Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, activateWindowInt)
		    Var resultInt as Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, expandEffectInt)
		  #endif
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fadeButton
	#tag Event
		Sub Action()
		  #If TargetWindows Then
		    // FADE EXAMPLE
		    AnimationTestWindow = New Animate_Window
		    AnimationTestWindow.Title = "Fade Window Example"
		    
		    Var animationTimeInt as Integer = animateSpeedTextfield.Text.ToDouble
		    Var windowHandleInt as Integer = AnimationTestWindow.Handle
		    Var activateWindowInt as Integer = WinAPILib.AnimateWindow.AW_ACTIVATE
		    Var fadeEffectInt as Integer = WinAPILib.AnimateWindow.AW_BLEND
		    
		    Var activateInt as Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, activateWindowInt)
		    Var resultInt as Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, fadeEffectInt)
		  #endif
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rollButton
	#tag Event
		Sub Action()
		  #If TargetWindows Then
		    // ROLL EXAMPLE
		    AnimationTestWindow = New Animate_Window
		    AnimationTestWindow.Title = "Roll Window Example"
		    
		    Var animationTimeInt as Integer = animateSpeedTextfield.Text.ToDouble
		    Var windowHandleInt as Integer = AnimationTestWindow.Handle
		    Var activateWindowInt as Integer = WinAPILib.AnimateWindow.AW_ACTIVATE
		    Var rollEffectInt as Integer = WinAPILib.AnimateWindow.AW_HOR_NEGATIVE
		    
		    Var activateInt as Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, activateWindowInt)
		    Var resultInt as Integer = WinAPILib.AnimateWindow.AnimateWindow(windowHandleInt, animationTimeInt, rollEffectInt)
		  #endif
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events animateSpeedTextfield
	#tag Event
		Function KeyDown(Key As String) As Boolean
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
