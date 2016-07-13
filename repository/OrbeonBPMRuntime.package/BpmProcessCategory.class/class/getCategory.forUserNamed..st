other
getCategory: categoryName forUserNamed: aString

	^(self getCategoriesForUserNamed: aString) detect: [:each | each name = categoryName] ifNone: [^nil]