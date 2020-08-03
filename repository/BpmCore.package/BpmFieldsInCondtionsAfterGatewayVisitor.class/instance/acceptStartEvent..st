events
acceptStartEvent: aBpmStartComponentDefinition

	aBpmStartComponentDefinition eventDefinition outTransitionsDo: [:transition | transition acceptVisitor: self]