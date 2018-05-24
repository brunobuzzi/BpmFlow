render
renderContentOn: html
	| chartDefinition |

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html].

	self showChartExecuted ifFalse: [^self].
	self resetShowChartExecuted.

	chartDefinition := BpmChartDefinition newFor: self session user.
	chartDefinition scope: (BpmChartGlobalScope newOn: chartDefinition) ;
		distribution: (BpmChartDistribution createSubInstanceFrom: (self reverseTranslation getOriginalStringFrom: self getDistributionName) on: chartDefinition);
		distributionType: (BpmChartQuantityDistribution newOn: chartDefinition);
		chartType: (BpmChartType createSubInstanceFrom: (self reverseTranslation getOriginalStringFrom: self getChartType) on: chartDefinition). 

	chartDefinition renderOn: html.