events
acceptIntermediateEvent: aBpmIntermediateComponentDefinition

	aBpmIntermediateComponentDefinition outTransitionsDo: [:transition | transition acceptVisitor: self]