other
getAllComboNames

	^self subclasses collect: [:each | each scopeName]