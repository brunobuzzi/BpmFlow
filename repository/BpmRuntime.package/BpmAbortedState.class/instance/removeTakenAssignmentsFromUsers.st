execution
removeTakenAssignmentsFromUsers
	"The receiver iterate over all <BpmUser> in the System and cancel all <BpmTaskAssignment> relate to <BpmProcessInstance>"

	BpmUser getFrontofficeUsers do: [:eachUser | eachUser cancelTaskAssignmentsForAbortion: process].