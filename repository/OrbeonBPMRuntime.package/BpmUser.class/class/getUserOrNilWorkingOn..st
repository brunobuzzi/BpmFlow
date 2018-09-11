task query
getUserOrNilWorkingOn: aBpmTaskInstance
	"The receiver answer <aBpmUser> that has taken the assignment to work on <aBpmTaskInstance>"

	^(self getUsersIn: aBpmTaskInstance bpmEnvironment)
		detect: [:each | (each getCurrentAssignmentsIn: aBpmTaskInstance bpmEnvironment) anySatisfy: [:eachAssing | eachAssing task == aBpmTaskInstance] ] 
		ifNone: [nil]