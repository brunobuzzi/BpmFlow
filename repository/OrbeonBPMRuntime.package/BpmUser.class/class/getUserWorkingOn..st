other
getUserWorkingOn: aBpmTaskInstance
	"The receiver answer <aBpmUser> that has take the assignment to work on <aBpmTaskInstance>"

	^self cache 
		detect: [:each | each getCurrentAssigments anySatisfy: [:eachAssing | eachAssing task == aBpmTaskInstance] ] 
		ifNone: [^NoUserWorkingOnTaskException signal: 'No user is working on this task']