other
renderContentOn: html
	| chartDefinition |

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html].

	self showChartExecuted ifFalse: [^self].
	self resetShowChartExecuted.

	chartDefinition := BpmChartDefinition new.
	chartDefinition scope: BpmChartGlobalScope new;
		distribution: (BpmChartDistribution createSubInstanceFrom: (self reverseTranslation getOriginalStringFrom: self getDistributionName));
		distributionType: BpmChartQuantityDistribution new;
		chartTypes: (OrderedCollection with: BpmBarChart new with: BpmPieChart new). 

	self isProcessDefinitionDistributionAndBarChart ifTrue: [^self renderProcessDefinitionDistributionBarChartOn: html].
	self isProcessDefinitionDistributionAndPieChart ifTrue: [^self renderProcessDefinitionDistributionPieChartOn: html].

	self isProcessInstanceDistributionAndBarChart ifTrue: [^self renderProcessInstancesDistributionBarChartOn: html].
	self isProcessInstanceDistributionAndPieChart ifTrue: [^self renderProcessInstancesDistributionPieChartOn: html].