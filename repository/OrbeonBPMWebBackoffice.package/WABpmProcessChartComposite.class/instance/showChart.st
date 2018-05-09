draw svg
showChart

	self isCreationDayDistribution ifTrue: [^self drawCreationDayDistributionChart].

	(self isFieldValueDistribution and: [self isDoubleChart not]) ifTrue: [^self drawFieldValueDistribution].

	(self isFieldValueDistribution and: [self isDoubleChart]) ifTrue: [^self drawFieldValueDoubleDistribution].

	self isProcessesAverageTimeDistribution ifTrue: [^self drawProcessesAverageDistribution].

	self isTasksAverageTimeDistribution ifTrue: [^self drawTasksAverageDistribution].