export
downloadProcessMap

	self selectedLateralItem hasSubProcesses
	ifTrue: [self downloadZipProcessMapOf: self selectedLateralItem] 
	ifFalse: [self downloadProcessMapOf: self selectedLateralItem].