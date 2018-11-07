*orbeonBPMXpdl
getBpmTypeComponentDefinitionClass

	self isTimerNode ifTrue: [^BpmTimerComponentDefinition].
	self isMessageNode ifTrue: [^BpmMessageComponentDefinition].
	self isErrorNode ifTrue: [^BpmErrorComponentDefinition].
	self isCompensationNode ifTrue: [^BpmCompensationComponentDefinition].
	self isParallelMultipleNode ifTrue: [^BpmMultipleParallelComponentDefinition].
	self isEscalationNode ifTrue: [^BpmEscalationComponentDefinition].
	self isConditionalNode ifTrue: [^BpmConditionalComponentDefinition].
	self isSignalNode ifTrue: [^BpmSignalComponentDefinition].
	self isMultipleNode ifTrue: [^BpmMultipleComponentDefinition].

	^BpmNoneComponentDefinition