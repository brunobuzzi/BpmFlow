distribution
addTo: distributionDictionary instancesDayDistributionFrom: startDate to: endDate satisfying: processConditionBlock onError: aBlock

	^self addTo: distributionDictionary instancesDayDistributionQuantityUsing: #createdTime from: startDate to: endDate satisfying: processConditionBlock onError: aBlock