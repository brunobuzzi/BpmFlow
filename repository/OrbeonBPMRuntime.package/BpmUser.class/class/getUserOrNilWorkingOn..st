task query
getUserOrNilWorkingOn: aBpmTaskInstance
	"The receiver answer <aBpmUser> that has taken the assignment to work on <aBpmTaskInstance>"

	^self cache 
		detect: [:each | each getCurrentAssignments anySatisfy: [:eachAssing | eachAssing task == aBpmTaskInstance] ] 
		ifNone: [nil]