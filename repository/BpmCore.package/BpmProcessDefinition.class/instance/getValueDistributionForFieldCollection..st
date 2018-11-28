distribution
getValueDistributionForFieldCollection: fieldInstancesCollection
	"Answer a Dictionary where the key is a value of field <fieldName> and value is a quantity in the whole collection <fieldInstancesCollection>"

	^self addTo: OrderPreservingDictionary new valueDistributionForFieldCollection: fieldInstancesCollection