ast queries
getAssignmentOf: aRBVariableNode
	"The receiver answer the assignment <aRBAssignmentNode> where the variable <aRBVariableNode> is defined "

	^parsedNode allChildren detect: [:each | each isAssignment and: [each variable = aRBVariableNode]] ifNone: []