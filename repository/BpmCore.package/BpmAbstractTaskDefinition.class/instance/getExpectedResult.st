extended attributes
getExpectedResult

	^self extendedValueOf: 'expectedResult' ifAbsent: [OrderedCollection new]