other
renderContentOn: html

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html].

	self isUserNumberOfTasksDistributionAndBarChart ifTrue: [^self renderNumberOfTasksBarChartOn: html].
	self isUserNumberOfTasksDistributionAndPieChart ifTrue: [^self renderNumberOfTasksPieChartOn: html].

	self isUserPossibleTasksDistributionAndBarChart ifTrue: [^self renderPossibleTasksBarChartOn: html].
	self isUserPossibleTasksDistributionAndPieChart ifTrue: [^self renderPossibleTasksPieChartOn: html].

	self isAverageTaskTimeDistributionAndBarChart ifTrue: [^self renderAverageTaskTimeBarChartOn: html].
	self isAverageTaskTimeDistributionAndPieChart ifTrue: [^self renderAverageTaskTimePieChartOn: html].