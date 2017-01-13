xpdl fileout
getProcessMapStream

	^self hasSubProcesses
		ifTrue: [self getZipProcessMapStream] "generate a ZIP with all subprocesses"
		ifFalse: [self getSingleProcessMapStream]. "generate a XPDL"