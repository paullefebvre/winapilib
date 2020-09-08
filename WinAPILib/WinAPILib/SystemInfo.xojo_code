#tag Class
Protected Class SystemInfo
	#tag Method, Flags = &h0
		Shared Function ComputerName() As String
		  #If TargetWindows Then
		    // https://msdn.microsoft.com/en-us/library/windows/desktop/ms724295(v=vs.85).aspx
		    
		    Soft Declare Sub GetComputerNameW Lib "Kernel32" (name As Ptr, ByRef size As Integer)
		    
		    Dim mb As New MemoryBlock(1024)
		    Dim size As Integer = mb.Size
		    
		    If System.IsFunctionAvailable("GetComputerNameW", "Kernel32") Then
		      GetComputerNameW(mb, size)
		      
		      Return mb.WString(0)
		    End If
		  #EndIf
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CPUUsage() As Integer
		  #If TargetWindows Then
		    Static lastIdleTime, lastKernelTime, lastUserTime As UInt64
		    Dim idleTime, kernelTime, userTime As UInt64
		    
		    // https://msdn.microsoft.com/en-us/library/windows/desktop/ms724400(v=vs.85).aspx
		    
		    Soft Declare Sub GetSystemTimes Lib "Kernel32" (ByRef IdleTime As UInt64, ByRef KernelTime As UInt64, ByRef UserTime As UInt64)
		    GetSystemTimes(idleTime, kernelTime, userTime)
		    
		    Dim user, sys, kernal, idle As UInt64
		    Dim cpu As Integer
		    
		    user = userTime - lastUserTime
		    kernal = kernelTime - lastKernelTime
		    idle = idleTime - lastIdleTime
		    sys = kernal + user
		    
		    cpu = (sys - idle) * 100 / sys
		    
		    lastIdleTime = idleTime
		    lastKernelTime = kernelTime
		    lastUserTime = userTime
		    
		    Return cpu
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function DefaultPrinter() As String
		  #If TargetWindows Then
		    // https://msdn.microsoft.com/en-us/library/windows/desktop/dd144876(v=vs.85).aspx
		    
		    Soft Declare Function GetDefaultPrinterW Lib "WinSpool.drv" ( buffer As Ptr, ByRef size As Integer ) As Boolean
		    Declare Function GetLastError Lib "Kernel32" () As Integer
		    // Awesome, let's call it to see how much space we need to allocate
		    Const ERROR_INSUFFICIENT_BUFFER = 122
		    Const ERROR_FILE_NOT_FOUND = 2
		    
		    Dim numCharacters As Integer
		    Call GetDefaultPrinterW(Nil, numCharacters)
		    Select Case GetLastError
		    Case ERROR_INSUFFICIENT_BUFFER
		      // Now we know how many characters to allocate so we can continue on
		      Dim buffSize As Integer = 2
		      #If Target64Bit Then
		        buffSize = 4
		      #Endif
		      Dim mb As New MemoryBlock(numCharacters * buffSize)
		      If GetDefaultPrinterW(mb, numCharacters) Then
		        Return mb.WString(0)
		      End If
		    Case ERROR_FILE_NOT_FOUND
		      // No default printer
		      Return ""
		    End Select
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function DoubleClickTime() As Integer
		  #If TargetWindows Then
		    // https://msdn.microsoft.com/en-us/library/windows/desktop/ms646258(v=vs.85).aspx
		    
		    Declare Function GetDoubleClickTime Lib "User32" () As Integer
		    
		    Return GetDoubleClickTime
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function HostName() As String
		  #If TargetWindows Then
		    // https://msdn.microsoft.com/en-us/library/windows/desktop/ms738527(v=vs.85).aspx
		    
		    Declare Function gethostname Lib "ws2_32" (name As Ptr, size As Integer) As Integer
		    
		    Dim mb As New MemoryBlock(256)
		    If gethostname(mb, mb.Size) = 0 Then
		      Return mb.CString(0)
		    End
		    
		    Return ""
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function LoggedInUserName() As Text
		  #If TargetWindows Then
		    // https://msdn.microsoft.com/en-us/library/windows/desktop/ms724432(v=vs.85).aspx
		    
		    Soft Declare Sub GetUserNameW Lib "AdvApi32" (lpBuffer As Ptr, ByRef nSize As Integer)
		    
		    Dim mb As New MemoryBlock( 256 )
		    Dim size As Integer = mb.Size
		    
		    GetUserNameW(mb, size)
		    
		    Dim s As String = ConvertEncoding(mb.WString(0), Encodings.UTF8)
		    Return s.ToText
		  #EndIf
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function NumberOfProcessors() As Integer
		  #If TargetWindows Then
		    // https://msdn.microsoft.com/en-us/library/windows/desktop/ms724381(v=vs.85).aspx
		    
		    Declare Sub GetSystemInfo Lib "Kernel32" (ByRef info As SYSTEM_INFO)
		    
		    Dim info As SYSTEM_INFO
		    GetSystemInfo(info)
		    
		    Return info.dwNumberOfProcessors
		    // This seems to be returning 0 when built as 64-bit
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ProcessID() As Integer
		  #If TargetWindows Then
		    // https://msdn.microsoft.com/en-us/library/windows/desktop/ms683215(v=vs.85).aspx
		    
		    Soft Declare Function GetProcessID Lib "Kernel32" Alias "GetCurrentProcessId" As Integer
		    Return GetProcessID
		  #EndIf
		End Function
	#tag EndMethod


	#tag Structure, Name = SYSTEM_INFO, Flags = &h0
		wProcessorArchitecture As UInt16
		  wReserved As UInt16
		  dwPageSize As UInt32
		  lpMinimumApplicationAddress As Ptr
		  lpMaximumApplicationAddress As Ptr
		  dwActiveProcessorMask As UInteger
		  dwNumberOfProcessors As UInt32
		  dwProcessorType As UInt32
		  dwAllocationGranularity As UInt32
		  wProcessorLevel As UInt16
		wProcessorRevision As UInt16
	#tag EndStructure


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
