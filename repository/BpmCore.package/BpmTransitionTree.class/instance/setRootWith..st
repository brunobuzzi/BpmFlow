other
setRootWith: aBpmEventDefinition
	| rootNodes |

	rootNodes := aBpmEventDefinition outTransitions collect: [:transition | | node |
		node := BpmTransitionTreeNode newOn: transition.
		nodesArtifactsMap at: node put: transition.
		node].

	roots addAll: rootNodes.