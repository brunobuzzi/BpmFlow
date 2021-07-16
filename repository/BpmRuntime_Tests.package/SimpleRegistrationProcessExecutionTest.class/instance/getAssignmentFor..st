other
getAssignmentFor: aBpmTaskInstance

	^(BpmTaskAssignment newFor: procInstance task: aBpmTaskInstance in: self getFinishedMatrix)
		role: (self createNewOrGetExistingFrontOfficeRole: 'anonymous-user' in: 'st');
		yourself