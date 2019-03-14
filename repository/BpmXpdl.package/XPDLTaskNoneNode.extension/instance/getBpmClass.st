*bpmxpdl
getBpmClass

	self extendedValueOf: 'seasideComponent' ifAbsent: [^BpmOrbeonTaskDefinition].
	(self extendedValueOf: 'seasideComponent') ifEmpty: [^BpmOrbeonTaskDefinition].

	^BpmSeasideTaskDefinition