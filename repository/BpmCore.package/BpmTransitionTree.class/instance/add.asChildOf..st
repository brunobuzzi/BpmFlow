visiting
add: aBpmTransitionDefinition asChildOf: aBpmTransitionTreeNode
	"The receiver add a new tree node with transtion <aBpmTransitionDefinition> as child of existing node <aBpmTransitionTreeNode>"
	| newNode |

	newNode := BpmTransitionTreeNode newOn: self for: aBpmTransitionDefinition.
	
	(self pathAlreadyExistFor: newNode) ifTrue: [^nil]. "if the path is already registered then the node is not added"

	allNodes add: newNode.
	nodesArtifactsMap at: newNode put: aBpmTransitionDefinition.

	"roots elements has <nil> as parent"
	aBpmTransitionTreeNode ifNotNil: [aBpmTransitionTreeNode addChild: newNode].

	^newNode