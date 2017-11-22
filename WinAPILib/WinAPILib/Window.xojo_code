#tag Class
Protected Class Window
	#tag Method, Flags = &h0
		Shared Function AlwaysTopmost(w As Global.Window) As Boolean
		  Const WS_EX_TOPMOST = &h00000008
		  Return TestWindowStyleEx(w, WS_EX_TOPMOST)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub AlwaysTopmost(w As Global.Window, Assigns topMost As Boolean)
		  #If TargetWindows Then
		    Const WS_EX_TOPMOST = &h00000008
		    ChangeWindowStyleEx(w, WS_EX_TOPMOST, topMost)
		    
		    Const SWP_NOSIZE = &H1
		    Const SWP_NOMOVE = &H2
		    Const HWND_TOPMOST = -1
		    Const HWND_NOTOPMOST = -2
		    
		    Declare Function SetWindowPos Lib "User32" (hwnd As Integer, hWndInstertAfter As Integer, _
		    x As Integer, y As Integer, cx As Integer, cy As Integer, flags As Integer) As Integer
		    
		    Dim after As Integer
		    If topMost Then
		      after = HWND_TOPMOST
		    Else
		      after = HWND_NOTOPMOST
		    End
		    Call SetWindowPos(w.Handle, after, 0, 0, 0, 0, SWP_NOMOVE + SWP_NOSIZE)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub ChangeWindowStyleEx(w As Global.Window, flag As Integer, set As Boolean)
		  #If TargetWindows Then
		    Const SWP_NOSIZE = &H1
		    Const SWP_NOMOVE = &H2
		    Const SWP_NOZORDER = &H4
		    Const SWP_FRAMECHANGED = &H20
		    
		    Const GWL_EXSTYLE = -20
		    
		    Declare Function GetWindowLong Lib "User32" Alias "GetWindowLongA" (hwnd As Integer,  _
		    nIndex As Integer) As Integer
		    Dim oldFlags As Integer
		    oldFlags = GetWindowLong(w.Handle, GWL_EXSTYLE)
		    
		    Dim newFlags As Integer
		    If Not set Then
		      newFlags = BitwiseAnd(oldFlags, Bitwise.OnesComplement(flag))
		    Else
		      newFlags = BitwiseOr(oldFlags, flag)
		    End If
		    
		    Dim styleFlags As Integer
		    Declare Function SetWindowLong Lib "User32" Alias "SetWindowLongA" (hwnd As Integer, _
		    nIndex As Integer, dwNewLong As Integer) As Integer
		    Declare Function SetWindowPos Lib "User32" (hwnd As Integer, hWndInstertAfter As Integer, _
		    x As Integer, y As Integer, cx As Integer, cy As Integer, flags As Integer) As Integer
		    styleFlags = SetWindowLong(w.Handle, GWL_EXSTYLE, newFlags)
		    styleFlags = SetWindowPos(w.Handle, 0, 0, 0, 0, 0, SWP_NOMOVE + _
		    SWP_NOSIZE + SWP_NOZORDER + SWP_FRAMECHANGED)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub Flash(w As Global.Window)
		  #If TargetWindows Then
		    Declare Function FlashWindow Lib "User32" (handle As Integer, invert As Boolean) As Boolean
		    Call FlashWindow(w.Handle, True)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function GetWindowLong Lib "User32" Alias "GetWindowLongA" (hwnd as integer, nIndex as integer) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub SetLayeredWindowAttributes Lib "User32" (hwnd As Integer, theColor As Integer, bAlpha As Integer, alpha As Integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Sub SetOpacity(wind As Global.Window, value As Double)
		  // Sets a window's opacity
		  #If TargetWindows
		    Const GWL_EXSTYLE = -20
		    Const WS_EX_LAYERED = &h80000
		    Const LWA_ALPHA = 2
		    
		    // grab our existing flags
		    Dim existingFlags As Integer = GetWindowLong(wind.Handle, GWL_EXSTYLE)
		    
		    // set WS_EX_LAYERED for this window so we can have opacity
		    existingFlags = SetWindowLong(wind.Handle, GWL_EXSTYLE, existingFlags Or WS_EX_LAYERED)
		    
		    // values range from 0-255, so you have to multiply the value times 255
		    SetLayeredWindowAttributes(wind.Handle, 0, value * 255, LWA_ALPHA)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function SetWindowLong Lib "User32" Alias "SetWindowLongA" (hwnd As Integer, nIndex As Integer, value As Integer) As Integer
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Shared Function TestWindowStyleEx(w As Global.Window, flag As Integer) As Boolean
		  #If TargetWindows Then
		    Const GWL_EXSTYLE = -20
		    
		    Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (hwnd As Integer,  _
		    nIndex As Integer) As Integer
		    
		    Dim oldFlags As Integer = GetWindowLong(w.WinHWND, GWL_EXSTYLE)
		    
		    If Bitwise.BitAnd(oldFlags, flag) = flag Then
		      Return True
		    Else
		      Return False
		    End If
		  #EndIf
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
