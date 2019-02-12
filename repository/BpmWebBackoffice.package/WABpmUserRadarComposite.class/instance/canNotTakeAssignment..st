free transitions
canNotTakeAssignment: aBpmTaskAssignment

	self closeAllInformationComponents.
	(self getTableNamed: 'Tasks' ifAbsent: [^self]) 
		information: ('The Task was Taken by other user !!!' translateIn: self session)
		color: 'red'.