other
getAssignmentFor: aBpmTaskInstance

	^(BpmTaskAssignment newFor: procInstance task: aBpmTaskInstance in: self getFinishedMatrix)
		roleName: 'anonymous-user';
		yourself