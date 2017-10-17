process execution
createAttachedEventsIn: aBpmProcessInstance
	" The <BpmEventDefinition>s attached to the receiver are created as concret instances of <BpmEventInstance>"

	attachedEvents do: [:eventDefinition | ]