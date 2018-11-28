other
getEmbeddedSubProcess

	^processGenerator getProcessDefinitionNamed: 'embedded-sub-proc' ifNone: [self assert: false]