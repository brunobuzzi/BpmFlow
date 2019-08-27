other
getTopProcess

	^processGenerator getProcessDefinitionNamed: 'multi-embedded' ifNone: [self assert: false]