other
createSubInstanceFrom: aString on: aBpmChartDefinition ifNone: aBlock
	| subInstance |

	subInstance := (self subclasses detect: [:each | each getComboName = aString] ifNone: [^aBlock value]) new.

	subInstance chartDefinition: aBpmChartDefinition. 

	^subInstance