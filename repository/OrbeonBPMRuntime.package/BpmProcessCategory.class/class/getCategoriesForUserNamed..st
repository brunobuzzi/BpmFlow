other
getCategoriesForUserNamed: aString

	^(self cache at: aString ifAbsent: [^OrderedCollection new])
			asSortedCollection: [:a :b | a name <= b name]