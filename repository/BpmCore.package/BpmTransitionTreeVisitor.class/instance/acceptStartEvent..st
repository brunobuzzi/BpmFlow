events
acceptStartEvent: aBpmStartComponentDefinition

	aBpmStartComponentDefinition outTransitionsDo: [:transition | 
		transition acceptVisitor: self.
	].