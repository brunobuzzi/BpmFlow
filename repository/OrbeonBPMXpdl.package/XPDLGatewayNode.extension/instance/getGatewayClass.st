*orbeonBPMXpdl
getGatewayClass

	(type = 'Parallel') ifTrue: [^BpmParallelGatewayDefinition].

	(type = 'Inclusive') ifTrue: [^BpmInclusiveGatewayDefinition].

	(type = 'Complex') ifTrue: [^BpmComplexGatewayDefinition].

	(type = 'ParallelEvent') ifTrue: [^BpmParallelEventBasedGatewayDefinition].

	(type = 'ExclusiveEvent') ifTrue: [^BpmExclusiveEventBasedGatewayDefinition].

	(type = 'InclusiveEvent') ifTrue: [^BpmEventBasedGatewayDefinition].

	^BpmExclusiveGatewayDefinition