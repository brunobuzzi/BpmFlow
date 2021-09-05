other
testProcessBasicCreation
	| procDef event |

	procDef := testRoot getLatestProcessDefinitionNamed: 'timer-process-start' in: self defaultApplicationName.

	event := procDef getAllArtifacts detect: [:each | each isEventDefinition and: [each isIntermediateEvent]] ifNone: [self assert: false].

	self assert: event activationBlockIsExecBlock.

	event := procDef getAllArtifacts detect: [:each | each isEventDefinition and: [each isStartEvent]] ifNone: [self assert: false].

	self assert: event activationBlockIsExecBlock.