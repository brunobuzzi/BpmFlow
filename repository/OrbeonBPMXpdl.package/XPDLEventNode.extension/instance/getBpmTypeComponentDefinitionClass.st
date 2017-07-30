*orbeonBPMXpdl
getBpmTypeComponentDefinitionClass

	self isTimer ifFalse: [^BpmNoneComponentDefinition].

	^BpmTimerComponentDefinition