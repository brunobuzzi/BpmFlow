other
visitProcess: aBpmProcessDefinition

	transtionTree := BpmTransitionTree newOn: aBpmProcessDefinition startEvent.

	aBpmProcessDefinition startEvent acceptVisitor: self