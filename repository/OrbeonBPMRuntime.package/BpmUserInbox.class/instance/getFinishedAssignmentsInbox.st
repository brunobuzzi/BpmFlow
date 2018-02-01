default boxes
getFinishedAssignmentsInbox

	^boxChildren 
		at: self getFinishedAssignmentsName 
		ifAbsent: [BasicUserBoxNotFoundException signal: 'There must be a [Finished Assignments] inbox']