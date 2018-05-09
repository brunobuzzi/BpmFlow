other
renderContentOn: html

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html].

	self isProcessDefinitionDistributionAndBarChart ifTrue: [^self renderProcessDefinitionDistributionBarChartOn: html].
	self isProcessDefinitionDistributionAndDonutChart ifTrue: [^self renderProcessDefinitionDistributionPieChartOn: html].

	self isProcessInstanceDistributionAndBarChart ifTrue: [^self renderProcessInstancesDistributionBarChartOn: html].
	self isProcessInstanceDistributionAndDonutChart ifTrue: [^self renderProcessInstancesDistributionPieChartOn: html].