process execution
cancelAttachedTask
	"The receiver cancel the attached task"

	^(BpmCancelAssignmentOperation on: attachedTask assignment by: attachedTask assignment user) 
			canceller: self;
			executeIt