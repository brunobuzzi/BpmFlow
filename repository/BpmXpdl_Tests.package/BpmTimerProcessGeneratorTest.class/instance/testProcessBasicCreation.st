other
testProcessBasicCreation
	| procDef event |

	procDef := testRoot getLatestProcessDefinitionNamed: 'timer-process' in: self defaultApplicationName.

	event := procDef getAllArtifacts detect: [:each | each isEventDefinition and: [each isIntermediateEvent]] ifNone: [self assert: false].

	self assert: event activationBlockIsExecBlock.