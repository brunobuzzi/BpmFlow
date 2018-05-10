other
showChart

	self isUserPossibleTasksDistribution ifTrue: [self drawUserPossibleTasksChart].

	self isUserNumberOfTasksDistribution ifTrue: [self drawUserNumberOfTasksChart].

	self isAverageTaskTimeDistribution ifTrue: [self drawAverageTaskTimeChart].