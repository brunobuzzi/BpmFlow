other
createNumberOfUserInTimeReport

	^self hasSpecificRole ifTrue: [self distribution createRoleDistributionReport: role] ifFalse: [self distribution createAllRolesDistributionReport]