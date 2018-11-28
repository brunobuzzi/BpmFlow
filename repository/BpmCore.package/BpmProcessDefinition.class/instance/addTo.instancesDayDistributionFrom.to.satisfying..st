distribution
addTo: distributionDictionary instancesDayDistributionFrom: startDate to: endDate satisfying: processConditionBlock

	^self addTo: distributionDictionary instancesDayDistributionQuantityUsing: #createdTime from: startDate to: endDate satisfying: processConditionBlock