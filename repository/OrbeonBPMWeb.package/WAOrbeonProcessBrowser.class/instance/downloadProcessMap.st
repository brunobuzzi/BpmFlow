export
downloadProcessMap
	| procInstance |

	procInstance := self selectedLateralItem process getTopProcess.

	procInstance definition hasSubProcesses
	ifTrue: [self downloadZipProcessMapOf: procInstance] 
	ifFalse: [self downloadProcessMapOf: procInstance].