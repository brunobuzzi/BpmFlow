searching
searchUser

	selectedObject := nil.

	(self hasSearchValueAt: 'username') 
	ifFalse: [^usersBatchedList items: ((self session user getVisibleUsersIn: self session bpmEnvironment) asSortedCollection: [:a : b | a username <= b username])].

	usersBatchedList items: 
		(((self searchValueAt: 'username') includes: $*)
		ifTrue: [(self session user getVisibleUsersIn: self session bpmEnvironment) select: [:each | (self searchValueAt: 'username') match: each username]]
		ifFalse: [(self session user getVisibleUsersIn: self session bpmEnvironment) at: (self searchValueAt: 'username') ifAbsent: [#()]])