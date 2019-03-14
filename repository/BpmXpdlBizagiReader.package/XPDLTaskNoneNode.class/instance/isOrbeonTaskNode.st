other
isOrbeonTaskNode

	self extendedValueOf: 'seasideComponent' ifAbsent: [^true]. "is not a Seaside Component --> is an Orbeon Task"
	(self extendedValueOf: 'seasideComponent') ifEmpty: [^true].

	^false "is a Seaside Component"