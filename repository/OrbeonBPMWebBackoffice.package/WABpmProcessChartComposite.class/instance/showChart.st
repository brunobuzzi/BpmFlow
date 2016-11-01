other
showChart

	(self isProcessInstanceDistributionAndBarChart and: [self isAllVersionSelected]) ifTrue: [^self drawProcessInstanceDistributionAndBarChart].
	(self isProcessInstanceDistributionAndDonutChart and: [self isAllVersionSelected]) ifTrue: [^self drawProcessInstanceDistributionAndDonutChart].