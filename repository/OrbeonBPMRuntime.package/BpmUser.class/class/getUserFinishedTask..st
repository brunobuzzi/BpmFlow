task query
getUserFinishedTask: aBpmTaskInstance
	"The receiver answer <aBpmUser> that has take the assignment to work on <aBpmTaskInstance>"

	^(self getUsersIn: aBpmTaskInstance bpmEnvironment) 
		detect: [:each | (each getFinishedAssignmentsIn: aBpmTaskInstance bpmEnvironment) anySatisfy: [:eachAssing | eachAssing task == aBpmTaskInstance] ] 
		ifNone: [^NoUserWorkingOnTaskException signal: 'No user finished this task']