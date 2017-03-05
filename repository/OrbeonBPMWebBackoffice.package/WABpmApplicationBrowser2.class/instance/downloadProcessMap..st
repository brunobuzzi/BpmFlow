xpdl download
downloadProcessMap: procName
	| bpmProcDefinition |

	bpmProcDefinition := BpmProcessDefinition getLatestProcessDefinitionNamed: procName in: selectedLateralItem applicationName.

	bpmProcDefinition hasSubProcesses
	ifTrue: [self downloadZipProcessMapOf: bpmProcDefinition] 
	ifFalse: [self downloadProcessMapOf: bpmProcDefinition].