free transitions
assignUserTo: aBpmTaskAssignment

	"another user could be take the process already"
	aBpmTaskAssignment checkIfIsStillAvailableToTake
	ifFalse: [^self canNotTakeAssignment: aBpmTaskAssignment]. 

	selectedObject take: aBpmTaskAssignment.

	self closeAllInformationComponents.
	(self getTableNamed: 'Tasks' ifAbsent: [^self]) 
		information: ('Task Assigned !!!' translateFor: self session user)
		color: 'green'.