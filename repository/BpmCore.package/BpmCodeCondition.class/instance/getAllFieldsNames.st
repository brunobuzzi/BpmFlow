other
getAllFieldsNames
	"Answer a collection with all field names used in the code evaluation"
	| parser |

	evaluationCode ifNil: [^false].

	parser := RBParser parseExpression: evaluationCode.

	^(parser allChildren select: [:each | each isMessage and:[each receiver isVariable]]) collect: [:each | each selector asString]