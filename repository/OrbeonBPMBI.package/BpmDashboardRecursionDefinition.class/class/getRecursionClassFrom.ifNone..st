other
getRecursionClassFrom: aString ifNone: aBlock

	^self subclasses detect: [:each | each comboBoxName = aString] ifNone: aBlock