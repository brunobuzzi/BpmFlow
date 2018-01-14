export
downloadProcessMap
	| procInstance |

	procInstance := selectedObject getTopProcess.

	procInstance definition hasSubProcesses
	ifTrue: [self downloadZipProcessMapOf: procInstance] 
	ifFalse: [self downloadProcessMapOf: procInstance].