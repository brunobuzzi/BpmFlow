other
takeTask: aBpmTaskAssignment
	"The current user take this task and the page is refreshed"

	aBpmTaskAssignment checkIfIsStillAvailableToTake
	ifFalse: [^self searchAll]. 

	self session user take: aBpmTaskAssignment.

	self searchAll