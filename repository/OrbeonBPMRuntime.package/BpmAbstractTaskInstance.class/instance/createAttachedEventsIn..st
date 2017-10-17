process execution
createAttachedEventsIn: aBpmProcessInstance
	" The event definitions <BpmEventDefinition> attached to the receiver are created as concrete instances of <BpmEventInstance>"

	attachedEvents do: [:eventDefinition | | eventInstance |
		eventInstance := eventDefinition createInstanceOn: aBpmProcessInstance.
		self attachEvent: eventInstance].