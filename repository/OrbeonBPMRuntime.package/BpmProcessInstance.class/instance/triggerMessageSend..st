events
triggerMessageSend: aBpmInterProcessMessage
	"The receiver create a <aBpmIntermediateEvent> based on <BpmEventDefinition> named <eventName> to be sent to <BpmProcessInstance> with id <processId>.
	It will set all <externalVariables> with values contained in <aDictionary> (varName --> value)"
	| eventDefinition eventInstance receiverProcessDefinition receiverProcess gateway |

	receiverProcessDefinition := aBpmInterProcessMessage getReceiverProcessDefinition.

	eventDefinition := definition getIntermediateEventNamed: aBpmInterProcessMessage receiverEventName 
											ifNone: [BpmImproperOperationException signal: 'No event with name [', aBpmInterProcessMessage receiverEventName , ']'].

	eventInstance := eventDefinition createInstanceOn: self parentArtifact: nil.