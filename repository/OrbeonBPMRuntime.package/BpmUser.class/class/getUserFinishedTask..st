task query
getUserFinishedTask: aBpmTaskInstance
	"The receiver answer <aBpmUser> that has take the assignment to work on <aBpmTaskInstance>"

	^self cache 
		detect: [:each | each getFinishedAssigments anySatisfy: [:eachAssing | eachAssing task == aBpmTaskInstance] ] 
		ifNone: [^NoUserWorkingOnTaskException signal: 'No user finished this task']