*bpmxpdl
getBpmClass

	self extendedValueOf: 'seasideComponent' ifAbsent: [^BpmOrbeonTaskDefinition].
	
	^BpmSeasideTaskDefinition