bpm xpdl
newBpmProcessDefinitionNamed: aString withXpdlString: xpdlString inEnvironmentNamed: environmentName inApplicationNamed: applicationName
	| xpdlReader processGenerator |

	xpdlReader := XPDLReader forProcessNamed: aString withString: xpdlString.
	xpdlReader connectProcesses.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: self.
	processGenerator mapProcess: aString toApplication: (self getExistingBpmApplicationOrCreateNewNamed:applicationName in: environmentName);
		generateAllProcess.

	processGenerator processesDo: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: aString ifNone: [NoProcessDefinitionException signal: 'There is no BpmProcessDefinition named [', aString, ']'].