draw svg
showChart

	(self isProcessInstanceDistributionAndBarChart and: [self isAllVersionSelected]) ifTrue: [^self drawProcessInstanceDistributionAndBarChart].
	(self isProcessInstanceDistributionAndDonutChart and: [self isAllVersionSelected]) ifTrue: [^self drawProcessInstanceDistributionAndDonutChart].

	self isCreationDayDistribution ifTrue: [^self drawCreationDayDistributionChart].

	self isFieldValueDistribution ifTrue: [^self drawFieldValueDistribution].