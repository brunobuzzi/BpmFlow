process execution
canCloseAndSend
	"Answer whether or not the receiver can be closed and send to the next task"

	^self hasPerformers 
	ifFalse: ["no <performers> --> can close and send"
		self isDone not and: [self hasForm] ]
	ifTrue: [self isFinishedByPerformers] "with <performers> --> can close and send only if all performers updated the receiver"