task query
getUserOrNilFinishedTask: aBpmTaskInstance
	"The receiver answer <aBpmUser> that has finished the assignment of task <aBpmTaskInstance>"

	^self cache 
		detect: [:each | each getFinishedAssigments anySatisfy: [:eachAssing | eachAssing task == aBpmTaskInstance] ] 
		ifNone: [nil]