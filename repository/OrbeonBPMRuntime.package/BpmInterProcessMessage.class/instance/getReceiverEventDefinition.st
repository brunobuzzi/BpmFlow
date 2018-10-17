query
getReceiverEventDefinition

	^self getReceiverProcessDefinition 
			getIntermediateEventNamed: receiverEventName 
			ifNone: [BpmImproperOperationException signal: 'No event with name [', receiverEventName , ']'].