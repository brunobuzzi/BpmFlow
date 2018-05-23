other
createSubInstanceFrom: aString

	^(self subclasses detect: [:each | each getComboName = aString] ifNone: []) new