assign unassign
setAlertUntakeStringFor: aBpmTaskAssignment
	| alertString |

	alertString := ('Task [' translateIn: self session), aBpmTaskAssignment taskName, 
						('] in Process [' translateIn: self session), aBpmTaskAssignment processId printString, 
						('] was released by other user !!!' translateIn: self session).

	self setAlertStringWith: alertString for: aBpmTaskAssignment