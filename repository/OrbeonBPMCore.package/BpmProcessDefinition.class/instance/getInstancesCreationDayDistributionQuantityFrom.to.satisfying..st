distribution
getInstancesCreationDayDistributionQuantityFrom: startDate to: endDate satisfying: processConditionBlock

	^self getInstancesDayDistributionQuantityUsing: #createdTime from: startDate to: endDate satisfying: processConditionBlock