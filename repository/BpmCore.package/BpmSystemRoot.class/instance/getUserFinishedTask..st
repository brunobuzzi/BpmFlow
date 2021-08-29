bpm users
getUserFinishedTask: aBpmTaskInstance
	"The receiver answer <aBpmUser> that has take the assignment to work on <aBpmTaskInstance>"

	^aBpmTaskInstance bpmEnvironment 
		usersDetect: [:each | (each getFinishedAssignmentsIn: aBpmTaskInstance bpmEnvironment) anySatisfy: [:eachAssing | eachAssing task == aBpmTaskInstance] ] 
		ifNone: [^NoUserWorkingOnTaskException signal: 'No user finished this task']