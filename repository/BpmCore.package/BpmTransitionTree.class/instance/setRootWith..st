visiting
setRootWith: aBpmProcessDefinition
	"The receiver set the <roots> with out transitions of <aBpmProcessDefinition> start event"
	| rootNodes startEvent |

	startEvent := aBpmProcessDefinition startEvent.

	rootNodes := startEvent outTransitions collect: [:transition |
		self add: transition asChildOf: nil.
	].

	roots addAll: rootNodes.

	roots do: [:each | self visitTransition: each]