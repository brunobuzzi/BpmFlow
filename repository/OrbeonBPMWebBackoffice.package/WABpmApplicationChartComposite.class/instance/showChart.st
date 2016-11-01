other
showChart

	self isProcessInstanceDistributionAndBarChart ifTrue: [^self drawProcessInstanceDistributionAndBarChart].
	self isProcessInstanceDistributionAndDonutChart ifTrue: [^self drawProcessInstanceDistributionAndDonutChart].