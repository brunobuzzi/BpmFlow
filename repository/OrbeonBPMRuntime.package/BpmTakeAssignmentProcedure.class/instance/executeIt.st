other
executeIt
	"The receiver execute all steps to assign the <BpmTaskAssignment> <assignment> to the <BpmUser> <user>"

	assignment 
		removeFromCurrentMatrix; "is not available for other users to take it"
		setAssignationDate; "time stamp when the task was taken"
		registerInProcess. "for historic purpose"

	assignment addToTakenMatrix. "store the assignment to taken tasks matrix"

	user getCurrentAssignmentsInbox acceptEntry: assignment. "store the assignment in the current assignment inbox"

	assignment user: user.

	assignment hasPerformers 
	ifTrue: [assignment addWorkerUser: user] "add a user <aBpmUser> and a role <aBpmRole> to the <BpmTaskInstance>"