other
renderContentOn: html

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html].

	(self isProcessInstanceDistributionAndBarChart and: [self isAllVersionSelected]) ifTrue: [^self renderProcessInstanceVersionDistributionBarChartOn: html].
	(self isProcessInstanceDistributionAndPieChart and: [self isAllVersionSelected]) ifTrue: [^self renderProcessInstanceVersionDistributionPieChartOn: html].