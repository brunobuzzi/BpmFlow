distribution
getInstancesDayDistributionQuantityUsing: sortSelector from: startDate to: endDate satisfying: processConditionBlock

	^self addTo: OrderPreservingDictionary new instancesDayDistributionQuantityUsing: sortSelector from: startDate to: endDate satisfying: processConditionBlock