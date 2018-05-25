charts
renderContentOn: html
	| chartDefinition |

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html].

	self showChartExecuted ifFalse: [^self].
	self resetShowChartExecuted.

	chartDefinition := BpmChartDefinition newFor: self session user.
	chartDefinition scope: (BpmChartUserScope newOn: chartDefinition user: self getSelectedUser);
		distribution: (BpmChartDistribution createSubInstanceFrom: (self reverseTranslation getOriginalStringFrom: self getDistributionName) on: chartDefinition);
		distributionType: (BpmChartQuantityDistribution newOn: chartDefinition);
		chartType: (BpmChartType createSubInstanceFrom: (self reverseTranslation getOriginalStringFrom: self getChartType) on: chartDefinition). 

	chartDefinition renderOn: html.
"
	self isFinishedTaskTypeQuantityDistributionAndBarChart ifTrue: [^self renderUserFinishedTasksBarChartOn: html].
	self isFinishedTaskTypeQuantityDistributionAndPieChart ifTrue: [^self renderUserFinishedTasksPieChartOn: html].

	self isCurrentTaskTypeQuantityDistributionAndBarChart ifTrue: [^self renderUserCurrentTasksBarChartOn: html].
	self isCurrentTaskTypeQuantityDistributionAndPieChart ifTrue: [^self renderUserCurrentTasksPieChartOn: html].

	self isAverageTaskTimeDistributionAndBarChart ifTrue: [^self renderUserAverageTimePerTaskBarChartOn: html].
	self isAverageTaskTimeDistributionAndPieChart ifTrue: [^self renderUserAverageTimePerTaskPieChartOn: html]."