other
showChart

	(self isNumberOfTasksDistributionSelection and: [self isAllRolesSelected]) ifTrue: [^self drawNumberTasksForRoleInApplicationChart].
	(self isUnassignedTasksDistribution and: [self isAllRolesSelected]) ifTrue: [^self drawUnassignedTaskChart].
	(self isNumberOfUsersDistribution and: [self isAllRolesSelected]) ifTrue: [^self drawNumberOfUsersInRoleChart].

	(self isTasksAverageTimeDistribution and: [self isAllRolesSelected not]) ifTrue: [^self drawAverageTimeForRoleTasksChart].