other
sameAs: aBpmTransitionTreeNode
	"The receiver answer whether or not is the same as <aBpmTransitionTreeNode>"
	| firstParentNodes secondParentNodes intersection |

	firstParentNodes := self getParentTransitions.
	secondParentNodes := aBpmTransitionTreeNode getParentTransitions.
	intersection := firstParentNodes select: [:each | secondParentNodes identityIncludes: each].

	^(intersection size = firstParentNodes size) and: [intersection size = secondParentNodes size]