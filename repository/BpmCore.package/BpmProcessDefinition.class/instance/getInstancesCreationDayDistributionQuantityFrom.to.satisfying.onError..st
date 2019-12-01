distribution
getInstancesCreationDayDistributionQuantityFrom: startDate to: endDate satisfying: processConditionBlock onError: errorBlock

	^self getInstancesDayDistributionQuantityUsing: #createdTime from: startDate to: endDate satisfying: processConditionBlock onError: errorBlock