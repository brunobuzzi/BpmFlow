other
getAssignmentFor: aBpmTaskInstance

	^(BpmTaskAssignment newFor: procInstance task: aBpmTaskInstance in: self getFinishedMatrix)
		role: (testRoot createNewOrGetExistingFrontOfficeRole: 'anonymous-user' in: 'st');
		yourself