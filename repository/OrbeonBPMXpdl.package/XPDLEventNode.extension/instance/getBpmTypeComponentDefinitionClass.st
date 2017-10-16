*orbeonBPMXpdl
getBpmTypeComponentDefinitionClass

	self isTimerNode ifFalse: [^BpmNoneComponentDefinition].

	^BpmTimerComponentDefinition