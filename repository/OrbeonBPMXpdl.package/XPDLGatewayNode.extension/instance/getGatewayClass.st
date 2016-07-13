*orbeonBPMXpdl
getGatewayClass

	(type = 'Parallel') ifTrue: [^BpmParallelGatewayDefinition].

	(type = 'Inclusive') ifTrue: [^BpmInclusiveGatewayDefinition].

	(type = 'Complex') ifTrue: [^BpmComplexGatewayDefinition].

	^BpmExclusiveGatewayDefinition