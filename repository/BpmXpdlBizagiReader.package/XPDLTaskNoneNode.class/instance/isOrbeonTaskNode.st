other
isOrbeonTaskNode

	self extendedValueOf: 'seasideComponent' ifAbsent: [^true]. "is not a Seaside Component --> is an Orboen Task"
	
	^false "is a Seaside Component"