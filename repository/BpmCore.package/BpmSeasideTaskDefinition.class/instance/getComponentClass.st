other
getComponentClass
	| seasideComponent |

	seasideComponent := Smalltalk at: (self extendedValueOf: 'seasideComponent' ifAbsent: [^nil]) asSymbol.

	^seasideComponent