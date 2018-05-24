other
createSubInstanceFrom: aString on: aBpmChartDefinition
	| subInstance |

	subInstance := (self subclasses detect: [:each | each getComboName = aString] ifNone: []) new.

	subInstance chartDefinition: aBpmChartDefinition. 

	^subInstance