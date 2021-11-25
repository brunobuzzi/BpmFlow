cache
registerInApplication

	(processName isNil or:[processName isEmpty]) ifTrue: [^NoProcessNameException signal: 'ProcessDefinition MUST have a name'].
	application ifNil: [^NoApplicationException signal: 'ProcessDefinition MUST have anOrbeonApplication'].

	version := (application hasProcessNamed: processName) ifFalse: [1] ifTrue: [application nextVersionNumberForProcessNamed: processName].

	(application isImmutableTheLastVersionOfProcessNamed: processName)
	ifTrue: [^ImmutableProcessException signal: 'The lasted version of this process is immutable then no more processes can be added to the cache'].

	^application registerProcessDefinition: self