xpdl fileout
getProcessMapStreamFor: aBpmUser

	^definition hasSubProcesses
		ifTrue: [self getZipProcessMapStreamFor: aBpmUser] "generate a ZIP with all subprocesses"
		ifFalse: [self getSingleProcessMapStreamFor: aBpmUser]. "generate a XPDL"