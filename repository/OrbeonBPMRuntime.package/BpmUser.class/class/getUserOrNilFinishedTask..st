task query
getUserOrNilFinishedTask: aBpmTaskInstance
	"The receiver answer <aBpmUser> that has finished the assignment of task <aBpmTaskInstance>"

	^(self getUsersIn: aBpmTaskInstance bpmEnvironment)
		detect: [:each | (each getFinishedAssignmentsIn: aBpmTaskInstance bpmEnvironment) anySatisfy: [:eachAssing | eachAssing task == aBpmTaskInstance] ] 
		ifNone: [nil]