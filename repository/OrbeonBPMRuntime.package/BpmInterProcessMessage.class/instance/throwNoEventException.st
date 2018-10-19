send
throwNoEventException

	^NoEventException signal: 'No event has been found with name [', receiverEventName, ']'.