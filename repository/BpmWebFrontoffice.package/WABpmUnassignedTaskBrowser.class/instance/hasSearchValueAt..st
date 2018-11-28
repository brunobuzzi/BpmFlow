other
hasSearchValueAt: aString

	^(self searchValueAt: aString)
		ifNotNil: [:each | each notEmpty]
		ifNil: [false]