other
showChart

	self isProcessDefinitionDistributionAndBarChart ifTrue: [^self drawProcessDefinitionDistributionAndBarChart].
	self isProcessDefinitionDistributionAndDonutChart ifTrue: [^self drawProcessDefinitionDistributionAndDonutChart].

	self isProcessInstanceDistributionAndBarChart ifTrue: [^self drawProcessInstanceDistributionAndBarChart].
	self isProcessInstanceDistributionAndDonutChart ifTrue: [^self drawProcessInstanceDistributionAndDonutChart].