other
removeUserFromAssignment: aBpmTaskAssignment

	(self componentValueAt: 'removeAssignment') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	aBpmTaskAssignment isTaken ifFalse: [^self].

	aBpmTaskAssignment releaseFromCurrentUser