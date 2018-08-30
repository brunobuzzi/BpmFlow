distribution
getValueDistributionForFieldCollection: fieldInstancesCollection from: startDate to: endDate satisfying: formConditionBlock
	"Answera Dictionary where the key is a value of field <fieldName> and value is a quantity in the whole collection <fieldInstancesCollection>"
	| filteredCollection |

	filteredCollection := (GsQuery fromString: ('(each.parentObject.createdTime >= startDate) & (each.parentObject.createdTime <= endDate)') on: fieldInstancesCollection) 
		bind: 'startDate' to: startDate; 
		bind: 'endDate' to: endDate; 
		queryResult.

	filteredCollection := filteredCollection select: [:fieldInst | formConditionBlock asBpmBlock value: fieldInst parentObject].

	^self getValueDistributionForFieldCollection: filteredCollection