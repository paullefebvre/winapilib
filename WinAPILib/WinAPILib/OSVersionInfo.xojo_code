#tag Class
Protected Class OSVersionInfo
	#tag Method, Flags = &h0
		Function Build() As Integer
		  Return mBuild
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  #If TargetWindows Then
		    
		    Dim m As MemoryBlock
		    Dim res As Boolean
		    Dim dwOSVersionInfoSize, wsuitemask, ret, i As Integer
		    Dim szCSDVersion, s As String
		    
		    Soft Declare Function GetVersionExA Lib "Kernel32" (lpVersionInformation As Ptr) As Integer
		    Soft Declare Function GetVersionExW Lib "Kernel32" (lpVersionInformation As Ptr) As Integer
		    
		    Dim bUsingUnicode As Boolean = False
		    If System.IsFunctionAvailable("GetVersionExW", "Kernel32") Then
		      bUsingUnicode = True
		      m = New MemoryBlock(284) ' use this for osversioninfoex structure (2000+ only)
		      m.long(0) = m.Size ' must set size before calling getversionex
		      ret = GetVersionExW(m) ' if not 2000+, will return 0
		      If ret = 0 Then
		        m = New MemoryBlock(276)
		        m.long(0) = m.Size ' must set size before calling getversionex
		        ret = GetVersionExW(m)
		        If ret = 0 Then
		          // Something really strange has happened
		          Return
		        End If
		      End If
		    End If
		    
		    mMajorVersion = m.Int32Value(4)
		    mMinorVersion = m.Int32Value(8)
		    mBuild = m.Int32Value(12)
		    mPlatformId = m.Int32Value(16)
		    
		    Dim nextVal As Integer
		    If bUsingUnicode Then
		      szCSDVersion = m.WString(20)
		      nextVal = 276
		    Else
		      szCSDVersion = m.CString(20)
		      nextVal = 148
		    End If
		    
		    Try
		      mServicePackStr = Str(m.Short(nextVal)) + "." + Str(m.Short(nextVal + 2))
		      If mServicePackStr = "0.0" Then mServicePackStr = ""
		      
		      mServicePack = Val(mServicePackStr)
		      wsuitemask = m.Short(nextVal + 4)
		      msuitemask = Hex(wSuitemask)
		      mproducttype = m.Byte(nextVal + 6)
		      
		    Catch err As OutOfBoundsException
		      mServicePackStr = ""
		      mServicePack = 0
		      wsuitemask = 0
		      mSuiteMask = ""
		      mProductType = 0
		    End Try
		    
		    If BitwiseAnd(Val(msuitemask), &h1) > 0 Then
		      mOSSuites  = "Small Business" + Chr(9)
		    End
		    If BitwiseAnd(wsuitemask, &h2) > 0 Then
		      mOSSuites  = mOSSuites + "Enterprise" + Chr(9)
		    End
		    If BitwiseAnd(wsuitemask, &h4) > 0 Then
		      mOSSuites  = mOSSuites + "BackOffice" + Chr(9)
		    End
		    If BitwiseAnd(wsuitemask, &h8) > 0 Then
		      mOSSuites  = mOSSuites + "Communications" + Chr(9)
		    End
		    If BitwiseAnd(wsuitemask, &h10) > 0 Then
		      mOSSuites  = mOSSuites + "Terminal Services" + Chr(9)
		    End
		    If BitwiseAnd(wsuitemask, &h20) > 0 Then
		      mOSSuites  = mOSSuites + "Small Business Restricted" + Chr(9)
		    End
		    If BitwiseAnd(wsuitemask, &h40) > 0 Then
		      mOSSuites  = mOSSuites + "Embedded NT" + Chr(9)
		    End
		    If BitwiseAnd(wsuitemask, &h80) > 0 Then
		      mOSSuites  = mOSSuites + "Data Center" + Chr(9)
		    End
		    If BitwiseAnd(wsuitemask, &h100) > 0 Then
		      mOSSuites  = mOSSuites + "Single User Terminal Services" + Chr(9)
		    End
		    If BitwiseAnd(wsuitemask, &h200) > 0 Then
		      mOSSuites  = mOSSuites + "Personal" + Chr(9)
		    End
		    If BitwiseAnd(wsuitemask, &h400) > 0 Then
		      mOSSuites  = mOSSuites + "Blade" + Chr(9)
		    End
		    If BitwiseAnd(wsuitemask, &h800) > 0 Then
		      mOSSuites  = mOSSuites + "Embedded Restricted" + Chr(9)
		    End
		    If BitwiseAnd(wsuitemask, &h1000) > 0 Then
		      mOSSuites  = mOSSuites + "Security Appliance" + Chr(9)
		    End
		    
		    Select Case mProductType
		    Case 1
		      mMode = "Workstation"
		    Case 2
		      mMode = "Domain Controller"
		    Case 3
		      mMode = "Server"
		    End Select
		    mExtraInfo = szCSDVersion
		    
		    s = Str(majorVersion) + "." + Str(mMinorVersion) + "." + Str(mBuild) + " " + mExtraInfo
		    mVersionString = s
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ExtraInfo() As String
		  Return mExtraInfo
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MajorVersion() As Integer
		  Return mMajorVersion
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MinorVersion() As Integer
		  Return mMinorVersion
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Mode() As String
		  Return mMode
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OSName() As String
		  Return mOSName
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OSSuites() As String
		  Return mOSSuites
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PlatformID() As Integer
		  Return mPlatformID
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ProductType() As Integer
		  Return mProductType
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ServicePack() As String
		  Return mServicePackStr
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SuiteMask() As String
		  Return mSuiteMask
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Version() As String
		  Return mVersionString
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mBuild As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mExtraInfo As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMajorVersion As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMinorVersion As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMode As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mOSName As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mOSSuites As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPlatformID As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mProductType As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mServicePack As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mServicePackStr As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSuiteMask As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mVersion As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mVersionString As string
	#tag EndProperty


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
