other
getComponentClass
	| seasideComponent |

	seasideComponent := Smalltalk at: (self extendedValueOf: 'seasideComponent' ifAbsent: [^self throwNoComponentFoundException]) asSymbol.

	^seasideComponent