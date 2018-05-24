charts
renderContentOn: html
	| chartDefinition |

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html].

	self showChartExecuted ifFalse: [^self].
	self resetShowChartExecuted.

	chartDefinition := BpmChartDefinition newFor: self session user.
	chartDefinition scope: (BpmChartProcessScope newOn: chartDefinition processes: self getSelectedProcessDefinitions) ;
		distribution: (BpmChartDistribution createSubInstanceFrom: (self reverseTranslation getOriginalStringFrom: self getDistributionName) on: chartDefinition);
		distributionType: (BpmChartQuantityDistribution newOn: chartDefinition);
		chartType: (BpmChartType createSubInstanceFrom: (self reverseTranslation getOriginalStringFrom: self getChartType) on: chartDefinition). 

	self setPropertiesTo: chartDefinition distribution.
	chartDefinition renderOn: html.

"	(self isProcessInstanceDistributionAndBarChart and: [self isAllVersionSelected]) ifTrue: [^self renderProcessInstanceVersionDistributionBarChartOn: html].
	(self isProcessInstanceDistributionAndPieChart and: [self isAllVersionSelected]) ifTrue: [^self renderProcessInstanceVersionDistributionPieChartOn: html].

	self isTasksAverageTimeDistributionAndBarChart ifTrue: [^self renderTaskAverageTimeDistributionBarChartOn: html].
	self isTasksAverageTimeDistributionAndPieChart ifTrue: [^self renderTaskAverageTimeDistributionPieChartOn: html].
	self isProcessesAverageTimeDistributionAndBarChart ifTrue: [^self renderProcessVersionAverageTimeBarChartOn: html].
	self isProcessesAverageTimeDistributionAndPieChart ifTrue: [^self renderProcessVersionAverageTimePieChartOn: html].

	self isFieldValueDistributionAndBarChart ifTrue: [^self renderFieldValueDistributionBarChartOn: html].
	self isFieldValueDistributionAndPieChart ifTrue: [^self renderFieldValueDistributionPieChartOn: html].

	self isFieldValueEvolution ifTrue: [^self renderFieldValueSumEvolutionOn: html].

	canvas notNil ifTrue: [self renderGraphOn: html]
"