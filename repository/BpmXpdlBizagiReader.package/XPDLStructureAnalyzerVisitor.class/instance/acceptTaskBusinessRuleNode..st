other
acceptTaskBusinessRuleNode: aXPDLTaskBusinessRuleNode

	aXPDLTaskBusinessRuleNode outTransitions do: [:each | each acceptVisitor: self ]