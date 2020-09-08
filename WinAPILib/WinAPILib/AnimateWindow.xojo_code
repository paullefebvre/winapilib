#tag Class
Protected Class AnimateWindow
	#tag Method, Flags = &h0
		Shared Function AnimateWindow(windowHwndInt as Integer, pTimeMsInt as Integer, animationType as Integer) As integer
		  #If TargetWindows Then
		    
		    // Enables you to produce special effects when showing or hiding windows
		    // There are four types of animation: roll, slide, collapse or expand, and alpha-blended fade.
		    // https://docs.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-animatewindow
		    
		    Declare Function AnimateWindow Lib "User32.dll" (windowHwndInt As Integer, pTimeMsInt As Integer, animationType as Integer ) As Integer
		    
		    Return AnimateWindow( windowHwndInt, pTimeMsInt, animationType)
		  #Endif
		End Function
	#tag EndMethod


	#tag Constant, Name = AW_ACTIVATE, Type = Double, Dynamic = False, Default = \"&h00020000", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AW_BLEND, Type = Double, Dynamic = False, Default = \"&h00080000", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AW_CENTER, Type = Double, Dynamic = False, Default = \"&h00000010", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AW_HIDE, Type = Double, Dynamic = False, Default = \"&h00010000", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AW_HOR_NEGATIVE, Type = Double, Dynamic = False, Default = \"&h00000002", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AW_HOR_POSITIVE, Type = Double, Dynamic = False, Default = \"&h00000001", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AW_SLIDE, Type = Double, Dynamic = False, Default = \"&h00040000", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AW_VER_NEGATIVE, Type = Double, Dynamic = False, Default = \"&h00000008", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AW_VER_POSITIVE, Type = Double, Dynamic = False, Default = \"&h00000004", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
