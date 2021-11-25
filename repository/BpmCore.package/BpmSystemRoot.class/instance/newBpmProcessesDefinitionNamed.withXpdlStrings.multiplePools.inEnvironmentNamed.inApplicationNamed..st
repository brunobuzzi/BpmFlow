bpm xpdl
newBpmProcessesDefinitionNamed: processesNames withXpdlStrings: xpdlArray multiplePools: xpdlHasMultiplePools inEnvironmentNamed: envArray inApplicationNamed: appArray
	| xpdlReader processGenerator |

	xpdlHasMultiplePools 
	ifFalse: [
		(((processesNames size = xpdlArray size) and: [xpdlArray size = envArray size]) and: [envArray size = appArray size])
		ifFalse: [BpmXpdlException signal: 'All Array must have the same size !!!']
	]
	ifTrue: [
		((processesNames size = envArray size) and: [envArray size = appArray size])
		ifFalse: [BpmXpdlException signal: 'All Array must have the same size !!!']
	].

	(processesNames size = 1) 
	ifTrue: [^self newBpmProcessDefinitionNamed: (processesNames at: 1) withXpdlString: (xpdlArray at: 1) inEnvironmentNamed: (envArray at: 1) inApplicationNamed: (appArray at: 1)].

	xpdlReader := self newXpdlReaderForProcessNamed: (processesNames at: 1) withXpdlString: (xpdlArray at: 1).

	xpdlHasMultiplePools ifFalse: [
		2 to: processesNames size do: [:index |
			xpdlReader addXPDLDocument: (XMLDOMParser parse: (xpdlArray at: index)) namedAs: (processesNames at: index).
		]
	].
	xpdlReader connectProcesses.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: self.
	1 to: processesNames size do: [:index | 
		processGenerator 
			mapProcess: (processesNames at: index) 
			toApplication: (self getExistingBpmApplicationOrCreateNewNamed: (appArray at: index) in: (envArray at: index))
	].
	processGenerator generateAllProcess.

	processGenerator processesDo: [:each | each registerInApplication].

	^processGenerator 
		getProcessDefinitionNamed: (processesNames at: 1) 
		ifNone: [NoProcessDefinitionException signal: 'There is no BpmProcessDefinition named [', (processesNames at: 1), ']'].