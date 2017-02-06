other
getSubClassFor: aCharacter

	^self subclasses detect: [:each | each defaultCharacter = aCharacter] ifNone: [nil]