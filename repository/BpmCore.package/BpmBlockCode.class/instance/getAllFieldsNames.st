other
getAllFieldsNames
	"Answer a collection with all field names used in the code evaluation"
	| parser validKeywordSelectors fieldNames |

	evaluationCode ifNil: [^false].

	validKeywordSelectors := Array with: #'getValueOfProcessField:' with: #'getValuesOfProcessField:' with: #'getValueOf:'.

	fieldNames := Set new.
	parser := RBParser parseExpression: evaluationCode.

	"collect fields names contained in direct messages sent to variables for example: '[:proc | proc passed]' --> collect 'passed' " "if the receiver is a class name -- > is rejected "
	fieldNames addAll: ((parser allChildren select: [:each | each isMessage and: [each receiver isVariable and: [each isUnary and:[each receiver token value first isLowercase ]]]]) collect: [:each | each selector asString]).

	"collect fields names using  #getValueOfProcessField: and #getValuesOfProcessField: for example: '[:proc | proc getValueOfProcessField: 'quantity']' --> collect 'quantity' "
	fieldNames addAll: ((parser allChildren select: [:each | each isMessage and: [each receiver isVariable and: [validKeywordSelectors includes: each selector]]]) collect: [:each | each arguments last token value]).

	^fieldNames asOrderedCollection