other
testFieldsInGatewayConditions

	self assert: (procDefinition hasGatewayConditionIncludingFieldNamed: 'checkResult').

	self assert: (procDefinition hasGatewayConditionIncludingFieldNamed: 'applianceResult').

	self deny: (procDefinition hasGatewayConditionIncludingFieldNamed: 'name').

	self deny: (procDefinition hasGatewayConditionIncludingFieldNamed: 'surname').