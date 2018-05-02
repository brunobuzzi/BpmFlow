other
executeIt
	"The receiver execute all steps to unassign the <BpmTaskAssignment> <assignment> from the <BpmUser> <user>"

	"the task was finalized by the user before the manager could make the untake operation"
	(user includesCurrentAssignment: assignment) ifFalse: [^self].

	assignment hasPerformers ifTrue: [assignment removeLastWorker]. "remove the last user and role from the BpmTaskInstace"

	assignment removeFromCurrentMatrix; "remove the assignment from taken matrix"
		addToAvailableMatrix. "add to free matrix, <user> set to nil"

	"remove it from the the current assignment inbox"
	"add the assignment to released inbox"
	user moveFromCurrentToReleased: assignment.

	(assignment getRolesToInformOn: #untake) do: [:eachRole | ].