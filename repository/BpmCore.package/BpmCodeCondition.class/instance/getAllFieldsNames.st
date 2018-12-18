other
getAllFieldsNames
	"Answer a collection with all field names used in the code evaluation"
	| parser validKeywordSelectors |

	evaluationCode ifNil: [^false].

	validKeywordSelectors := Array with: #'getValueOfProcessField:' with: #'getValuesOfProcessField:'.

	parser := RBParser parseExpression: evaluationCode.

	^(parser allChildren select: [:each | each isMessage and: [each receiver isVariable and: [each isUnary or: [validKeywordSelectors includes: each selector]]]]) 
			collect: [:each | each selector asString]