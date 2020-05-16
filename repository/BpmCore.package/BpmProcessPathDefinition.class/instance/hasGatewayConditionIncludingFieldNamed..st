other
hasGatewayConditionIncludingFieldNamed: fieldName
	"Answer whether or not the receiver has a <BpmGatewayDefinition> with condition that includes a field named <fieldName>"

	^gateways anySatisfy: [:each | each hasEvaluationConditionWithFieldNamed: fieldName]