other
downloadProcessMap
	| procInstance |

	procInstance := self selectedLateralItem getTopProcess.

	procInstance definition hasSubProcesses
	ifTrue: [self downloadZipProcessMapOf: procInstance] 
	ifFalse: [self downloadProcessMapOf: procInstance].