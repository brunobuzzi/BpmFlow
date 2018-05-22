other
showChart

	super showChart.

	(self isTasksAverageTimeDistribution and: [self isAllRolesSelected not]) ifTrue: [^self drawAverageTimeForRoleTasksChart].