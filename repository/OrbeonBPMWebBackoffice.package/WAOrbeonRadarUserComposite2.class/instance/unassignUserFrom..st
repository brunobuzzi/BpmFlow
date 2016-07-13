free transitions
unassignUserFrom: aBpmTaskAssignment
	"The receiver unassing the assignment <aBpmTaskAssignment> from the selected user <selectedObject>"

	aBpmTaskAssignment isTaken ifFalse: [
		self closeAllInformationComponents.
		^(self getTableNamed: 'Tasks' ifAbsent: [^self]) 
			information: ('The Task has been already untaken by the user !!!' translateFor: self session user)
			color: 'red'.].

	selectedObject untake: aBpmTaskAssignment.

	self closeAllInformationComponents.
	(self getTableNamed: 'Tasks' ifAbsent: [^self]) 
		information: ('Task Unassigned !!!' translateFor: self session user)
		color: 'green'.