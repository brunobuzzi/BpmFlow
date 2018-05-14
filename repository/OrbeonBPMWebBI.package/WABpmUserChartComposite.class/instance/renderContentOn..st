other
renderContentOn: html

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html].

	self isFinishedTaskTypeQuantityDistributionAndBarChart ifTrue: [^self renderUserFinishedTasksBarChartOn: html].
	self isFinishedTaskTypeQuantityDistributionAndPieChart ifTrue: [^self renderUserFinishedTasksPieChartOn: html].

	self isCurrentTaskTypeQuantityDistributionAndBarChart ifTrue: [^self renderUserCurrentTasksBarChartOn: html].
	self isCurrentTaskTypeQuantityDistributionAndPieChart ifTrue: [^self renderUserCurrentTasksPieChartOn: html].

	self isAverageTaskTimeDistributionAndBarChart ifTrue: [^self renderUserAverageTimePerTaskBarChartOn: html].
	self isAverageTaskTimeDistributionAndPieChart ifTrue: [^self renderUserAverageTimePerTaskPieChartOn: html].