distribution
getInstancesDayDistributionQuantityUsing: sortSelector from: startDate to: endDate satisfying: processConditionBlock onError: handler

	^self addTo: OrderPreservingDictionary new instancesDayDistributionQuantityUsing: sortSelector from: startDate to: endDate satisfying: processConditionBlock onError: handler