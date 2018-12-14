other
hasEvaluationConditionWithFieldNamed: fieldName
	"Answer whether or not the field named <fieldName> is included in the evaluation expression of the receiver"

	evaluationCode ifNil: [^false].

	^self getAllFieldsNames anySatisfy: [:each | each asString = fieldName asString]