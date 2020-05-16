events
acceptIntermediateEvent: aBpmIntermediateComponentDefinition

	aBpmIntermediateComponentDefinition eventDefinition outTransitions do: [:transition | transition acceptVisitor: self]