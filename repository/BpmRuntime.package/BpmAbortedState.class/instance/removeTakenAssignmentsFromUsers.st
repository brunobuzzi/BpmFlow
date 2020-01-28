execution
removeTakenAssignmentsFromUsers
	"The receiver iterate over all <BpmUser> in the System and cancel all <BpmTaskAssignment> relate to <BpmProcessInstance>"

	(self defaultBpmUserClass getFrontofficeUsersIn: process bpmEnvironment) do: [:eachUser | eachUser cancelTaskAssignmentsForAbortion: process].