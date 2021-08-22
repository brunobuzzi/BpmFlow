default boxes
getCurrentAssignmentsInbox

	^boxChildren 
		at: self getCurrentAssignmentsName 
		ifAbsent: [BasicUserBoxNotFoundException signal: 'There must be a [Current Assignments] inbox']