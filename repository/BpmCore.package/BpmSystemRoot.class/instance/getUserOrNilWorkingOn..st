bpm users
getUserOrNilWorkingOn: aBpmTaskInstance
	"The receiver answer <aBpmUser> that has taken the assignment to work on <aBpmTaskInstance>"

	^aBpmTaskInstance bpmEnvironment
		usersDetect: [:each | (each getCurrentAssignmentsIn: aBpmTaskInstance bpmEnvironment) anySatisfy: [:eachAssing | eachAssing task == aBpmTaskInstance] ] 
		ifNone: [nil]