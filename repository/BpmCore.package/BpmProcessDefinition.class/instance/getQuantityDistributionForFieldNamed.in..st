distribution
getQuantityDistributionForFieldNamed: fieldName in: formName
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole"

	^self getValueDistributionForFieldCollection: (self fieldInstancesOf: fieldName in: formName)