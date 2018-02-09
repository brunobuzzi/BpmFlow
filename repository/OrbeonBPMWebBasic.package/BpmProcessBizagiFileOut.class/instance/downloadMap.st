other
downloadMap

	fileOutObject getTopProcess hasSubProcesses
	ifTrue: [self downloadZipProcessMap] 
	ifFalse: [self downloadProcessMap].