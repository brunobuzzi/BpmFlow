other
getSubClassFor: aCharacter

	^self subclasses detect: [:each | each defaultIdCharacter = aCharacter] ifNone: [nil]