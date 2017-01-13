other
downloadProcessMap: procName
	| bpmProcDefinition |

	bpmProcDefinition := BpmProcessDefinition getLatestProcessDefinitionNamed: procName in: selectedLateralItem applicationName.

	bpmProcDefinition hasSubProcesses
	ifTrue: [self downloadZipProcessMapOf: bpmProcDefinition] "generate a ZIP with all subprocesses"
	ifFalse: [self downloadProcessMapOf: bpmProcDefinition]. "generate a XPDL"