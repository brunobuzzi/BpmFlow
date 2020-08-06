other
visitProcess: aBpmProcessDefinition

	transtionTree := BpmTransitionTree newOn: aBpmProcessDefinition.

	aBpmProcessDefinition startEventAcceptVisitor: self