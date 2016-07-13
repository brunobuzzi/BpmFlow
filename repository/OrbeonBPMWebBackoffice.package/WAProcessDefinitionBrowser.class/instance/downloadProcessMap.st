export
downloadProcessMap

	self selectedLateralItem hasSubProcesses
	ifTrue: [self downloadZipProcessMapOf: self selectedLateralItem] "generate a ZIP with all subprocesses"
	ifFalse: [self downloadProcessMapOf: self selectedLateralItem]. "generate a XPDL"