free transitions
unassignUserFrom: aBpmTaskAssignment
	"The receiver unassign the assignment <aBpmTaskAssignment> from the selected user <selectedObject>"

	aBpmTaskAssignment isTaken ifFalse: [^self setAlertUntakeStringFor: aBpmTaskAssignment]. 

	selectedObject untake: aBpmTaskAssignment.

	self closeAllInformationComponents.
	(self getTableNamed: 'Tasks' ifAbsent: [^self]) 
		information: ('Task Unassigned !!!' translateIn: self session)
		color: 'green'.