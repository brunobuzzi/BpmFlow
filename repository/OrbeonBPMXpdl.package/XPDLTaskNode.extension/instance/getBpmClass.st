*orbeonBPMXpdl
getBpmClass

	self extendedValueOf: 'seasideComponent' ifAbsent: [^BpmOrbeonTaskDefinition].
	
	^BpmSeasideTaskDefinition