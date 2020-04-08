distribution
addTo: distributionDictionary instancesDayDistributionQuantityUsing: sortSelector from: startDate to: endDate satisfying: processConditionBlock onError: handler

	^self addTo: distributionDictionary 
			instancesDayDistributionQuantityUsingBlock: [:proc | proc perform: sortSelector] 
			from: startDate 
			to: endDate 
			satisfying: processConditionBlock 
			onError: handler