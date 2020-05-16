events
acceptStartEvent: aBpmStartComponentDefinition

	aBpmStartComponentDefinition eventDefinition outTransitions do: [:transition | 
		transition acceptVisitor: self.
	].