other
renderContentOn: html

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html].

	self isFinishedTaskTypeQuantityDistributionAndBarChart ifTrue: [^self renderUserFinishedTasksBarChartOn: html].
	self isFinishedTaskTypeQuantityDistributionAndPieChart ifTrue: [^self renderUserFinishedTasksBarPieOn: html].