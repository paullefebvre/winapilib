#tag Class
Protected Class FileIO
	#tag Method, Flags = &h0
		Shared Sub LaunchAndWait(f As FolderItem, params As String = "", deskName As String = "")
		  // 64-bit updates thanks to Julian Samphire
		  // https://forum.xojo.com/45446-wfs-kiosk-mode-64-bit-app-not-working/0#p369184
		  
		  // Launch the application and wait for
		  // it to finish executing before returning.
		  #If TargetWindows Then
		    Soft Declare Function CreateProcessW Lib "Kernel32" (appName As WString, params As WString, _
		    procAttribs As Integer, threadAttribs As Integer, inheritHandles As Boolean, flags As UInt32, _
		    env As Integer, curDir As Integer, startupInfo As Ptr, procInfo As Ptr) As Boolean
		    
		    Dim startupInfo, procInfo As MemoryBlock
		    
		    #If Target64Bit
		      Const sizeOfPtr = 8
		    #Else
		      Const sizeOfPtr = 4
		    #EndIf
		    
		    #If Target64Bit
		      startupInfo = New MemoryBlock(104)
		    #Else
		      startupInfo = New MemoryBlock(68)
		    #EndIf
		    
		    procInfo = New MemoryBlock((2 * sizeOfPtr) + 4 + 4)
		    
		    Dim deskStr, deskPtr As MemoryBlock
		    If deskName <> "" Then
		      deskStr = ConvertEncoding(deskName + Chr(0), Encodings.UTF16)
		      
		      startupInfo.Ptr(2 * sizeOfPtr) = deskStr
		    End If
		    
		    Dim ret As Boolean
		    ret = CreateProcessW(f.AbsolutePath, params, 0, 0, False, 0, 0, 0, startupInfo, procInfo)
		    If Not ret Then Return
		    
		    Declare Function WaitForSingleObject Lib "Kernel32" (handle As Integer, howLong As Integer) As Integer
		    Const INFINITE = -1
		    Const WAIT_TIMEOUT = &h00000102
		    Const WAIT_OBJECT_0 = &h0
		    
		    // Want to loop here so that app can yield time back
		    // to other threads.  This means threaded applications
		    // will "just work", but non-threaded ones will still appear hung.
		    While WaitForSingleObject(procInfo.Long(0), 1) = WAIT_TIMEOUT
		      App.SleepCurrentThread(10)
		    Wend
		    
		    Declare Sub CloseHandle Lib "Kernel32" (handle As Integer)
		    CloseHandle(procInfo.Long(0))
		    CloseHandle(procInfo.Long(1 * sizeOfPtr))
		    
		  #Else
		    #Pragma unused f
		    #Pragma unused params
		    #Pragma unused deskName
		  #EndIf
		End Sub
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
