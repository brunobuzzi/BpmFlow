*orbeonBPMXpdl
getBpmTypeComponentDefinitionClass

	self isTimerNode ifTrue: [^BpmTimerComponentDefinition].

	self isMessageNode ifTrue: [^BpmMessageComponentDefinition].

	^BpmNoneComponentDefinition