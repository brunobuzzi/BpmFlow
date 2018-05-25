charts
renderContentOn: html
	| chartDefinition |

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html].

	self showChartExecuted ifFalse: [^self].
	self resetShowChartExecuted.

	chartDefinition := BpmChartDefinition newFor: self session user.
	chartDefinition scope: (BpmChartUserScope newOn: chartDefinition user: self session user);
		distribution: (BpmChartDistribution createSubInstanceFrom: (self reverseTranslation getOriginalStringFrom: self getDistributionName) on: chartDefinition);
		distributionType: (BpmChartQuantityDistribution newOn: chartDefinition);
		chartType: (BpmChartType createSubInstanceFrom: (self reverseTranslation getOriginalStringFrom: self getChartType) on: chartDefinition). 

	chartDefinition renderOn: html.

"	self isUserNumberOfTasksDistributionAndBarChart ifTrue: [^self renderNumberOfTasksBarChartOn: html].
	self isUserNumberOfTasksDistributionAndPieChart ifTrue: [^self renderNumberOfTasksPieChartOn: html].

	self isUserPossibleTasksDistributionAndBarChart ifTrue: [^self renderPossibleTasksBarChartOn: html].
	self isUserPossibleTasksDistributionAndPieChart ifTrue: [^self renderPossibleTasksPieChartOn: html].

	self isAverageTaskTimeDistributionAndBarChart ifTrue: [^self renderAverageTaskTimeBarChartOn: html].
	self isAverageTaskTimeDistributionAndPieChart ifTrue: [^self renderAverageTaskTimePieChartOn: html]."