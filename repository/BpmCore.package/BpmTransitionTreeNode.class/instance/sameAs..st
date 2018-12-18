other
sameAs: aBpmTransitionTreeNode
	"The receiver answer whether or not is the same as <aBpmTransitionTreeNode>.
	If transitions of the receiver is equal to transitions of <aBpmTransitionTreeNode> then they have the same transition path --> are same node"
	| firstParentNodes secondParentNodes intersection |

	firstParentNodes := self getParentTransitions.
	secondParentNodes := aBpmTransitionTreeNode getParentTransitions.
	intersection := firstParentNodes select: [:each | secondParentNodes identityIncludes: each].

	^(intersection size = firstParentNodes size) and: [intersection size = secondParentNodes size]