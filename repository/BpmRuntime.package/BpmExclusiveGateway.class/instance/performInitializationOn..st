other
performInitializationOn: aBpmProcessInstance
	"The receiver perform the creation operation in the process instance <aBpmProcessInstance>.
	This operatoin initialize the receiver inside the process <aBpmProcessInstance>"

	isClosed ifTrue: [^self]. "a transition has already triggered the receiver so there is nothing to do"

	self isSplitting 
	ifTrue: [aBpmProcessInstance finalizeGateway: self.
				self evaluateOutgoingTransitionsOn: aBpmProcessInstance].

	isClosed := true.

	self isMerging 
	ifTrue: [aBpmProcessInstance finalizeGateway: self.
				aBpmProcessInstance generateNextTransitionsFrom: self].

	"the <inTransitions> children are set with <outTransitions> after all outgoing transitions have been created.
	See: BpmProcessInstance>>isAnyExecutionPathPendingToFinalize.
	Issue: #1081"
	self setChildrenOfInAndOutTransitions.