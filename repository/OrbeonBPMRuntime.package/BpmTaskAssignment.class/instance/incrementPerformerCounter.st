performers
incrementPerformerCounter
	"The increment in 1 the performer count of it's task <BpmTaskInstance> only if it has performers.
	This is used to know how many task has been finished by performers.
	Without this counter is NOT possible to know if a task has been finished or is been edited by a performer 
	(see task: <rolesWhoWorked> and <usersWhoWorked>) "

	self hasPerformers ifTrue: [task incrementPerformerCounter]