other
visitProcess: aBpmProcessDefinition

	transtionTree := BpmTransitionTree newOn: aBpmProcessDefinition.

	aBpmProcessDefinition startEvent acceptVisitor: self