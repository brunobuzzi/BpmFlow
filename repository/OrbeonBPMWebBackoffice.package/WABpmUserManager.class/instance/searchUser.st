searching
searchUser

	selectedObject := nil.

	(self hasSearchValueAt: 'username') 
	ifFalse: [^usersBatchedList items: (self session user getVisibleUsers asSortedCollection: [:a : b | a username <= b username])].

	usersBatchedList items: 
		(((self searchValueAt: 'username') includes: $*)
		ifTrue: [self session user getVisibleUsers select: [:each | (self searchValueAt: 'username') match: each username]]
		ifFalse: [self session user getVisibleUsers at: (self searchValueAt: 'username') ifAbsent: [#()]])