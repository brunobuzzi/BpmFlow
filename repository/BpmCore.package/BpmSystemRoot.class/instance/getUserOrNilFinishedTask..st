bpm users
getUserOrNilFinishedTask: aBpmTaskInstance
	"The receiver answer <aBpmUser> that has finished the assignment of task <aBpmTaskInstance>"

	^aBpmTaskInstance bpmEnvironment
		usersDetect: [:each | (each getFinishedAssignmentsIn: aBpmTaskInstance bpmEnvironment) anySatisfy: [:eachAssing | eachAssing task == aBpmTaskInstance] ] 
		ifNone: [nil]