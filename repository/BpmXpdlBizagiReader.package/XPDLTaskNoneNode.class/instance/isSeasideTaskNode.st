other
isSeasideTaskNode

	self extendedValueOf: 'seasideComponent' ifAbsent: [^false]. "is not a Seaside Component --> is an Orbeon Task"
	(self extendedValueOf: 'seasideComponent') ifEmpty: [^false].

	^true "is a Seaside Component"