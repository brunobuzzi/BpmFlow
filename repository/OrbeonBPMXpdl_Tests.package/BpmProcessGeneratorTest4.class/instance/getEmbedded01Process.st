other
getEmbedded01Process

	^processGenerator getProcessDefinitionNamed: 'embedded 01' ifNone: [self assert: false]