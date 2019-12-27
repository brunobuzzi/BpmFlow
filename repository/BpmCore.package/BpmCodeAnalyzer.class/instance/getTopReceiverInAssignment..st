ast queries
getTopReceiverInAssignment: aRBAssignmentNode
	"Answer the top receiver in the assignment node <aRBAssignmentNode> "

	aRBAssignmentNode value isMessage ifTrue: [^self getTopReceiverInMessage: aRBAssignmentNode value].

	aRBAssignmentNode value isCascade ifTrue: [^self getTopReceiverInMessage: aRBAssignmentNode messages first].

	^nil