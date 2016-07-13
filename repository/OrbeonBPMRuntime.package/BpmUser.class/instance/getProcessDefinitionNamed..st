processes
getProcessDefinitionNamed: aString

	^self getProcessDefinitionLatestVersions detect: [:each | each processName = aString] ifNone: [nil]