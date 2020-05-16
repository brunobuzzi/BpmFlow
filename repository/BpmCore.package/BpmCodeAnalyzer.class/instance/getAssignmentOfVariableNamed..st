ast queries
getAssignmentOfVariableNamed: aString
	"The receiver answer the assignment <aRBAssignmentNode> where the variable named <aString> "
	| variableNode |

	variableNode := parsedNode allChildren detect: [:each | each isVariable and: [each name = aString]] ifNone: [].

	variableNode ifNil: [^nil].

	^self getAssignmentOf: variableNode