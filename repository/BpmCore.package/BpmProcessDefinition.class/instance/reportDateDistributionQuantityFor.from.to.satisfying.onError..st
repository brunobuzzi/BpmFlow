distribution report
reportDateDistributionQuantityFor: fieldName from: startDate to: endDate satisfying: conditionBlock onError: errorHandler

	^self class reportDateDistributionQuantityForAll: (OrderedCollection with: self) 
					for: fieldName 
					from: startDate 
					to: endDate 
					satisfying: conditionBlock 
					onError: errorHandler