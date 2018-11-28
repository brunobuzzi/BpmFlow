other
hasEvaluationConditionWithFieldNamed: fieldName
	"Answer whether or not the field named <fieldName> is included in the evaluation expression of the receiver"
	| parser messagesToProcess |

	evaluationCode ifNil: [^false].

	parser := RBParser parseExpression: evaluationCode.

	messagesToProcess := parser allChildren select: [:each | each isMessage and:[each receiver isVariable]].

	^messagesToProcess anySatisfy: [:each | each selector asString = fieldName asString]