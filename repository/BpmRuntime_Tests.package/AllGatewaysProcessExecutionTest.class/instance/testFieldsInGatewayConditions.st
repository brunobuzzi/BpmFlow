test
testFieldsInGatewayConditions

	self assert: (procDefinition hasGatewayConditionIncludingFieldNamed: 'taskTwoOption').

	self assert: (procDefinition hasGatewayConditionIncludingFieldNamed: 'taskThreeOption').

	self assert: (procDefinition hasGatewayConditionIncludingFieldNamed: 'taskFiveDate').

	self assert: (procDefinition hasGatewayConditionIncludingFieldNamed: 'taskSixTime').

	self deny: (procDefinition hasGatewayConditionIncludingFieldNamed: 'name').

	self deny: (procDefinition hasGatewayConditionIncludingFieldNamed: 'surname').