other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := XPDLProcessDefinitionTemplate xpdlReaderForTimerProcessStartSimple. 

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'timer-process-start-simple' toApplication: (self getApplicationManagerClass getAnyApplicationNamed: 'ue');
		generateAllProcess.

	processGenerator processes do: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'timer-process-start-simple' ifNone: [self assert: false].