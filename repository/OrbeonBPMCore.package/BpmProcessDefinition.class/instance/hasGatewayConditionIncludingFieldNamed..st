other
hasGatewayConditionIncludingFieldNamed: fieldName
	"Answer whether or not the receiver has a <BpmGatewayDefinition> with condition that includes a field named <fieldName>"

	^executionPath hasGatewayConditionIncludingFieldNamed: fieldName