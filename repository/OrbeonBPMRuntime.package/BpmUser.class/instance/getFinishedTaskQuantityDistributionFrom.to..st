distribution
getFinishedTaskQuantityDistributionFrom: startDate to: endDate

	^self getFinishedTaskQuantityDistributionFrom: startDate to: endDate satisfying: [:e | true]