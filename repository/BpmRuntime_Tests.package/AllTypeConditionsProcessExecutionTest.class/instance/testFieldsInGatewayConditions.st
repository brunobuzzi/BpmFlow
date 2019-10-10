test
testFieldsInGatewayConditions

	self assert: (procDefinition hasGatewayConditionIncludingFieldNamed: 'name').

	self assert: (procDefinition hasGatewayConditionIncludingFieldNamed: 'amount').

	self assert: (procDefinition hasGatewayConditionIncludingFieldNamed: 'date').

	self assert: (procDefinition hasGatewayConditionIncludingFieldNamed: 'boolean').

	self assert: (procDefinition hasGatewayConditionIncludingFieldNamed: 'time').

	self assert: (procDefinition hasGatewayConditionIncludingFieldNamed: 'timeStamp').

	self deny: (procDefinition hasGatewayConditionIncludingFieldNamed: 'now').