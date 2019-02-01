free transitions
unassignUserFrom: aBpmTaskAssignment
	"The receiver unassign the assignment <aBpmTaskAssignment> from the selected user <selectedObject>"

	aBpmTaskAssignment isTaken ifFalse: [
		self closeAllInformationComponents.
		^(self getTableNamed: 'Tasks' ifAbsent: [^self]) 
			information: ('The Task has been already untaken by the user !!!' translateIn: self session)
			color: 'red'.].

	selectedObject untake: aBpmTaskAssignment.

	self closeAllInformationComponents.
	(self getTableNamed: 'Tasks' ifAbsent: [^self]) 
		information: ('Task Unassigned !!!' translateIn: self session)
		color: 'green'.