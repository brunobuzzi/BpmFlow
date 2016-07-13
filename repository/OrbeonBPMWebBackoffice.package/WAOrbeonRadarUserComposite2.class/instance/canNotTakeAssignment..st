free transitions
canNotTakeAssignment: aBpmTaskAssignment

	self closeAllInformationComponents.
	(self getTableNamed: 'Tasks' ifAbsent: [^self]) 
		information: ('The Task has been already Taken by other user !!!' translateFor: self session user)
		color: 'red'.