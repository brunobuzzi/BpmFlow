other
getAssignmentFor: aBpmTaskInstance

	^(BpmTaskAssignment newFor: procInstance task: aBpmTaskInstance in: self getFinishedMatrix)
		role: (BpmFrontOfficeRole createNewOrGetExisting: 'anonymous-user' in: 'st');
		yourself