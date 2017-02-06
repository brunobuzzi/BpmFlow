Updating
setExtendedAttributesWith: attributesDictionary

	extendedAttributes := attributesDictionary.

	(extendedAttributes includesKey: 'executionTime') 
	ifTrue: [self createExpectedExecutionTimeFromBizagiString].