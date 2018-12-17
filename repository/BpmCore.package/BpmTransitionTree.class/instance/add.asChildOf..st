visiting
add: aBpmTransitionDefinition asChildOf: aBpmTransitionTreeNode
	| newNode |

	newNode := BpmTransitionTreeNode newOn: self for: aBpmTransitionDefinition.

	(self pathAlreadyExistFor: newNode) ifTrue: [^nil].

	allNodes add: newNode.

	nodesArtifactsMap at: newNode put: aBpmTransitionDefinition.

	"roots elements has <nil> as parent"
	aBpmTransitionTreeNode ifNotNil: [aBpmTransitionTreeNode addChild: newNode].

	^newNode