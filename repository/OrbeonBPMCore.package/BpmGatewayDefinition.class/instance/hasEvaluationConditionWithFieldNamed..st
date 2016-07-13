other
hasEvaluationConditionWithFieldNamed: fieldName
	"Answer whether or not the field named <fieldName> is included in the evaluation expression of the receiver"

	^outTransitions anySatisfy: [:each | each hasEvaluationConditionWithFieldNamed: fieldName]