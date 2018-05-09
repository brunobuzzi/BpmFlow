other
renderContentOn: html

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html].

	(self isProcessInstanceDistributionAndBarChart and: [self isAllVersionSelected]) ifTrue: [^self renderProcessInstanceVersionDistributionBarChartOn: html].
	(self isProcessInstanceDistributionAndPieChart and: [self isAllVersionSelected]) ifTrue: [^self renderProcessInstanceVersionDistributionPieChartOn: html].

	self isTasksAverageTimeDistributionAndBarChart ifTrue: [^self renderTaskAverageTimeDistributionBarChartOn: html].
	self isTasksAverageTimeDistributionAndPieChart ifTrue: [^self renderTaskAverageTimeDistributionPieChartOn: html].
	self isProcessesAverageTimeDistributionAndBarChart ifTrue: [^self renderProcessVersionAverageTimeBarChartOn: html].
	self isProcessesAverageTimeDistributionAndPieChart ifTrue: [^self renderProcessVersionAverageTimePieChartOn: html].

	canvas notNil ifTrue: [self renderGraphOn: html]