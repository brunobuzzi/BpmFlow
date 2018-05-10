other
showChart

	(self isTasksAverageTimeDistribution and: [self isAllRolesSelected not]) ifTrue: [^self drawAverageTimeForRoleTasksChart].