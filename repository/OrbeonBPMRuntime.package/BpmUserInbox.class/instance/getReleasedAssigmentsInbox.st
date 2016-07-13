default boxes
getReleasedAssigmentsInbox

	^boxChildren 
		at: self getReleasedAssignmentsName 
		ifAbsent: [BasicUserBoxNotFoundException signal: 'There must be a [Released Assignments] inbox']