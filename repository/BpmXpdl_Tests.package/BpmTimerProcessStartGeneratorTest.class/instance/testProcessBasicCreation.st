other
testProcessBasicCreation
	| procDef event |

	procDef := processGenerator getProcessDefinitionNamed: 'timer-process-start' ifNone: [self assert: false].

	event := procDef getAllArtifacts detect: [:each | each isEventDefinition and: [each isIntermediateEvent]] ifNone: [self assert: false].

	self assert: (event type activationBlock class == ExecBlock).

	event := procDef getAllArtifacts detect: [:each | each isEventDefinition and: [each isStartEvent]] ifNone: [self assert: false].

	self assert: (event type activationBlock class == ExecBlock).