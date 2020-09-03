#tag Class
Protected Class CommandLink
Inherits Canvas
	#tag Event
		Sub Close()
		  RaiseEvent Close
		  
		  #If TargetWindows Then
		    #If Target32Bit Then
		      Soft Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongW" (hwnd As Integer, nIndex As Int32, dwNewLong As Ptr) As Ptr
		    #Else
		      Soft Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongPtrW" (hwnd As Integer, nIndex As Int32, dwNewLong As Ptr) As Ptr
		    #EndIf
		    
		    Const GWL_WNDPROC = -4
		    Call SetWindowLong(Me.Handle, GWL_WNDPROC, mOldWndProc)
		    
		    Declare Sub DestroyWindow Lib "User32" (hwnd As Ptr)
		    DestroyWindow(mCommandHandle)
		  #EndIf
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub GotFocus()
		  #If TargetWindows Then
		    Declare Sub SetFocus Lib "User32" (hwnd As Ptr)
		    SetFocus(mCommandHandle)
		  #EndIf
		  
		  RaiseEvent GotFocus
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  //
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  //
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  //
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  //
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  #If TargetWindows Then
		    Declare Function CreateWindowExW Lib "User32" (ex As Integer, className As WString, _
		    title As WString, style As UInt32, x As Int32, y As Int32, width As Int32, _
		    height As Int32, parent As Integer, menu As Integer, hInstance As Ptr, _
		    lParam As Integer) As Ptr
		    
		    Declare Function GetModuleHandleA Lib "Kernel32" (name As Ptr) As Ptr
		    
		    Dim hInstance As Ptr = GetModuleHandleA(Nil)
		    
		    Const WS_CHILD = &h40000000
		    Const WS_VISIBLE = &h10000000
		    Const BS_COMMANDLINK = &hE
		    
		    mCommandHandle = CreateWindowExW(0, "BUTTON", "", _
		    WS_CHILD + WS_VISIBLE + BS_COMMANDLINK, _
		    0, 0, 0, 0, Me.Handle, 0, hInstance, 0)
		    
		    // Resize the control
		    Declare Sub SetWindowPos Lib "User32" (hwnd As Ptr, after As Integer, _
		    x As Int32, y As Int32, width As Int32, height As Int32, flags As UInt32)
		    
		    Const SWP_NOZORDER = &h4
		    SetWindowPos(mCommandHandle, 0, 0, 0, Me.Width * ScaleFactor, Me.Height * ScaleFactor, SWP_NOZORDER)
		    
		    // Subclass window proc to receive events so we can tell when the command is clicked on
		    If sWndProcMap = Nil Then sWndProcMap = New Dictionary
		    sWndProcMap.Value(Me.Handle) = Self
		    
		    #If Target32Bit Then
		      Soft Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongW" (hwnd As Integer, nIndex As Int32, dwNewLong As Ptr) As Ptr
		    #Else
		      Soft Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongPtrW" (hwnd As Integer, nIndex As Int32, dwNewLong As Ptr) As Ptr
		    #EndIf
		    Const GWL_WNDPROC = -4
		    mOldWndProc = SetWindowLong(Me.Handle, GWL_WNDPROC, AddressOf WndProc)
		  #EndIf
		  
		  RaiseEvent Open
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  //
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function CreateImageList(p as Picture) As Ptr
		  #If TargetWindows Then
		    Declare Function ImageList_Create Lib "ComCtl32" (cx As Int32, cy As Int32, _
		    flags As Int32, initialSize As Int32, growBy As Int32) As Ptr
		    
		    Const ILC_COLOR4              = &h0004
		    Const ILC_COLOR8              = &h0008
		    Const ILC_COLOR16             = &h0010
		    Const ILC_COLOR24             = &h0018
		    Const ILC_COLOR32             = &h0020
		    
		    Const TVM_SETIMAGELIST = &h1109
		    
		    // We have two lists, so which list we work on
		    // may change.  If the list hasn't been created
		    // yet, then we need to make it now as well.
		    Dim flags As Integer
		    Select Case p.Depth
		    Case 32
		      flags = ILC_COLOR32
		    Case 24
		      flags = ILC_COLOR24
		    Case 16
		      flags = ILC_COLOR16
		    Case 8
		      flags = ILC_COLOR8
		    Case 4
		      flags = ILC_COLOR4
		    End
		    
		    Dim imageList As Ptr
		    // Make the new image list
		    imageList = ImageList_Create(p.Width, p.Height, flags, 1, 1)
		    
		    Declare Sub SendMessage Lib "User32" Alias "SendMessageW" (hwnd As Ptr, msg As UInt32, wParam As Integer, lParam As Ptr )
		    Call SendMessage( mCommandHandle, TVM_SETIMAGELIST, 0, imageList)
		    
		    // Now we have an image list to work with, so let's
		    // add the picture.  This is rather much a pain in 
		    // the arse, but that's ok, we can do it  using declares!
		    // We need to make an HBITMAP from the image that
		    // also uses the mask properly
		    Dim hbitmap As Ptr = p.CopyOSHandle(Picture.HandleType.WindowsBMP)
		    
		    // Now that we have the HBITMAP from the Picture
		    // object, we can add it to the image list
		    Declare Function ImageList_Add Lib "ComCtl32" (list As Ptr, _
		    image As ptr, mask As Integer) As Integer
		    
		    Call ImageList_Add(imageList, hbitmap, 0)
		    
		    // Now that we're done with the bitmap, we should
		    // release it
		    Declare Sub DeleteObject Lib "Gdi32" (obj As Ptr)
		    DeleteObject(hbitmap)
		    
		    Return imageList
		  #EndIf
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function HIWORD(param As Integer) As UInt16
		  Return Bitwise.ShiftRight(param, 16)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function InternalWndProc(msg As Int32, wParam As Integer, lParam As Integer) As Integer
		  #If TargetWindows Then
		    Const WM_COMMAND = &h111
		    Const BN_CLICKED = 0
		    
		    Select Case msg
		    Case WM_COMMAND
		      If HIWORD(wParam) = BN_CLICKED Then RaiseEvent Action
		    End Select
		    
		    Declare Function CallWindowProcW Lib "User32" (oldProc As Ptr, handle As Integer, msg As Int32, wParam As Integer, lParam As Integer) As Integer
		    Return CallWindowProcW(mOldWndProc, Me.Handle, msg, wParam, lParam)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetNote(s As String)
		  #If TargetWindows Then
		    Declare Sub SendMessage Lib "User32" Alias "SendMessageW" (hwnd As Ptr, msg As Int32, wParam As Integer, lParam As WString)
		    
		    Const BCM_SETNOTE = &h1609
		    SendMessage(mCommandHandle, BCM_SETNOTE, 0, s)
		  #EndIf
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPicture(p As Picture)
		  #If TargetWindows Then
		    Const BCM_SETIMAGELIST = &h1602
		    
		    Declare Sub SendMessageW Lib "User32" (hwnd As Ptr, msg As Int32, wParam As Integer, ByRef lParam As BUTTON_IMAGELIST)
		    
		    Dim buttonImage As BUTTON_IMAGELIST
		    buttonImage.himl = CreateImageList(p)
		    
		    SendMessageW(mCommandHandle, BCM_SETIMAGELIST, 0, buttonImage)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetText(s As String)
		  #If TargetWindows Then
		    Declare Sub SendMessage Lib "User32" Alias "SendMessageW" (hwnd As Ptr, msg As Int32, wParam As Integer, lParam As WString)
		    
		    Const WM_SETTEXT = &hC
		    SendMessage(mCommandHandle, WM_SETTEXT, 0, s)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function WndProc(hWnd As Integer, msg As Int32, wParam As Integer, lParam As Integer) As Integer
		  #If TargetWindows Then
		    #Pragma X86CallingConvention StdCall
		    
		    Dim obj As CommandLink = sWndProcMap.Value(hWnd)
		    If obj <> Nil Then
		      Return obj.InternalWndProc(msg, wParam, lParam)
		    End If
		  #EndIf
		End Function
	#tag EndMethod

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Function WndProcDelegate(hWnd As Ptr, msg As Int32, wParam As Integer, lParam As Integer) As Integer
	#tag EndDelegateDeclaration


	#tag Hook, Flags = &h0
		Event Action()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event GotFocus()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag Property, Flags = &h21
		Private mCommandHandle As Ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mOldWndProc As Ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared sWndProcMap As Dictionary
	#tag EndProperty


	#tag Structure, Name = BUTTON_IMAGELIST, Flags = &h21
		himl As Ptr
		  margin As RECT
		uAlign As UInt32
	#tag EndStructure

	#tag Structure, Name = RECT, Flags = &h21
		left As Int32
		  top As Int32
		  right As Int32
		bottom As Int32
	#tag EndStructure


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowAutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tooltip"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocus"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTabs"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Visible=false
			Group=""
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue=""
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
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Visible=false
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
