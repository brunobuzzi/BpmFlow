other
executeIt
	"The receiver execute all steps to assign the <BpmTaskAssignment> <assignment> to the <BpmUser> <user>"

	assignment hasPerformers ifFalse: [assignment removeFromCurrentMatrix] ifTrue: [assignment removeFromCurrentMatrixForNextPerformer]. "is not available for other users to take it"
	assignment
		setAssignationDate; "time stamp when the task was taken"
		registerInProcess. "for historic purpose"

	user getCurrentAssignmentsInbox acceptEntry: assignment. "store the assignment in the current assignment inbox"

	assignment user: user.

	assignment hasPerformers 
	ifTrue: [assignment addWorkerUser: user]. "add a user <aBpmUser> and a role <aBpmRole> to the <BpmTaskInstance>"

	"This has to be done after #addWorkerUser: because now the task is in the next role --> the assignment is added to the correct Matrix"
	assignment addToTakenMatrix."see issue #448"

	(assignment getRolesToInformOn: #take) do: [:eachRole | ].