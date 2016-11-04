distribution report
reportInstancesCreationDayDistributionFrom: startDate to: endDate satisfying: processConditionBlock

	^self reportInstancesDayDistributionUsing: #createdTime from: startDate to: endDate satisfying: processConditionBlock