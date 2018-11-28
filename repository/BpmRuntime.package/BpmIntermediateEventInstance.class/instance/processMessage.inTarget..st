process execution
processMessage: aBpmInterProcessMessage inTarget: aBpmProcessInstance
	"The receiver process the inter process message <aBpmInterProcessMessage> in the context of target/receiver process <aBpmProcessInstance> then generate next transitions"

	receivedMessage := aBpmInterProcessMessage.

	receivedMessage variablesToSet keysAndValuesDo: [:fieldName :value |
		aBpmProcessInstance atExternalVariable: fieldName put: value.
	]. 

	self generateNextRunningTransitions.