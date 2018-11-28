other
getFixIssueProcess

	^processGenerator getProcessDefinitionNamed: 'fix-issue' ifNone: [nil]