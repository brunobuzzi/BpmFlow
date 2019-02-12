other
takeTask: aBpmTaskAssignment
	"The current user take this task and the page is refreshed"

	aBpmTaskAssignment checkIfIsStillAvailableToTake
	ifFalse: [^self setAlertStringFor: aBpmTaskAssignment]. 

	self session user take: aBpmTaskAssignment.

	self searchAll