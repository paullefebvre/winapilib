#tag Class
Protected Class Screen
	#tag Method, Flags = &h0
		Shared Function CaptureRect(x As Integer, y As Integer, width As Integer, height As Integer) As Picture
		  ' Performs a screen capture on the specified screen rectangle.
		  #If TargetWindows Then
		    If Width = 0 Or Height = 0 Then Return Nil
		    
		    Declare Function GetDesktopWindow Lib "User32" () As Integer
		    Declare Function GetDC Lib "User32" (HWND As Integer) As Integer
		    Declare Function BitBlt Lib "GDI32" (DCdest As Integer, xDest As Integer, yDest As Integer, Width As Integer, _
		    Height As Integer, DCdource As Integer, xSource As Integer, ySource As Integer, rasterOp As Integer) As Boolean
		    Declare Function ReleaseDC Lib "User32" (HWND As Integer, DC As Integer) As Integer
		    Const SRCCOPY = &h00CC0020
		    Const CAPTUREBLT = &h40000000
		    
		    Dim screenCap As Picture = New Picture(width, height, 24)
		    Dim HWND As Integer = GetDesktopWindow()
		    Dim sourceDC As Integer = GetDC(HWND)
		    Dim destDC As Integer = screenCap.Graphics.Handle(screenCap.Graphics.HandleTypeHDC)
		    Call BitBlt(destDC, 0, 0, width, height, sourceDC, X, Y, SRCCOPY Or CAPTUREBLT)
		    Call ReleaseDC(HWND, sourceDC)
		    Return screenCap
		  #Endif
		  
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
