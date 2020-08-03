events
acceptIntermediateEvent: aBpmIntermediateComponentDefinition

	aBpmIntermediateComponentDefinition eventDefinition outTransitionsDo: [:transition | transition acceptVisitor: self]