assign unassign
setAlertTakeStringFor: aBpmTaskAssignment
	| alertString |

	alertString := ('Task [' translateIn: self session), aBpmTaskAssignment taskName, 
						('] in Process [' translateIn: self session), aBpmTaskAssignment processId printString, 
						('] was taken by other user !!!' translateIn: self session).

	self setAlertStringWith: alertString for: aBpmTaskAssignment