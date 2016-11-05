distribution report
reportTotalValueDistributionFor: fieldName in: formName
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole"
	
	^self reportValueDistributionForFieldCollection: (self fieldInstancesOf: fieldName in: formName)