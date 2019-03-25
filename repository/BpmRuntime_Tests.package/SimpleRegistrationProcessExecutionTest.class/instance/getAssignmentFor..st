other
getAssignmentFor: aBpmTaskInstance

	^(BpmTaskAssignment newFor: procInstance task: aBpmTaskInstance in: self getFinishedMatrix)
		role: (self defaultFrontOfficeRoleClass createNewOrGetExisting: 'anonymous-user' in: 'st');
		yourself