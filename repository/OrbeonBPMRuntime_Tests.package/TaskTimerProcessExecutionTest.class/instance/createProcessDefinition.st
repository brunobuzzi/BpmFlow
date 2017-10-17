other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := XPDLProcessDefinitionTemplate xpdlReaderForTimerTask. 

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'task_timer' toApplication: (self getApplicationManagerClass getAnyApplicationNamed: 'ue');
		generateAllProcess.

	processGenerator processes do: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'task_timer' ifNone: [self assert: false].