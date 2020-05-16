users
getUserGroupMatching: aString

	^(userGroups select: [:each | aString match: each name]) asSortedCollection: [:a :b | a name <= b name]