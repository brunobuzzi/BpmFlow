distribution
getValueDistributionForFieldCollection: fieldInstancesCollection from: startDate to: endDate satisfying: formConditionBlock onError: aBlock
	"Answera Dictionary where the key is a value of field <fieldName> and value is a quantity in the whole collection <fieldInstancesCollection>"
	| filteredCollection |

	filteredCollection := fieldInstancesCollection select: [:fieldInst | (startDate <= fieldInst parentObject createdTime) 
																							and: [(fieldInst parentObject createdTime <= endDate)
																							and: [formConditionBlock asBpmBlock value: fieldInst parentObject onError: aBlock]]].

	^self addTo: OrderPreservingDictionary new valueDistributionForFieldCollection: filteredCollection