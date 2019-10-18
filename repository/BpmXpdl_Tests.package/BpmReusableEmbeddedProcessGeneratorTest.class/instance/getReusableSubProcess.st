other
getReusableSubProcess

	^processGenerator getProcessDefinitionNamed: 'reusable-sub-proc' ifNone: [self assert: false]