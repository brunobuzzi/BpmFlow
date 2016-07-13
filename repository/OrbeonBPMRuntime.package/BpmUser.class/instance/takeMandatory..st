assignment
takeMandatory: aBpmTaskAssignment
	"The receiver take the unassigned task <aBpmTaskAssignment> as mandatory. 
	See the unimplemented issue #220"

	aBpmTaskAssignment 
		setAssignationDate; "time stamp when the task was taken"
		registerInProcess. "for historic purpose"

	self getCurrentAssigmentsInbox acceptEntry: aBpmTaskAssignment. "store the assignment in the current assignment inbox"

	aBpmTaskAssignment user: self.