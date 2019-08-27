other
getProcessWithLoop

	^processGenerator getProcessDefinitionNamed: 'dashboard-process-with-loop' ifNone: [self assert: false].