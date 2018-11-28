other
performInitializationOn: aBpmProcessInstance
	"The receiver perform the creation operation in the process instance <aBpmProcessInstance>.
	This operatoin initialize the receiver inside the process <aBpmProcessInstance>"

	isClosed ifTrue: [^self]. "a transition has already triggered the receiver so there is nothing to do"

	self isSplitting 
	ifTrue: [aBpmProcessInstance finalizeGateway: self.
				self evaluateOutgoingTransitionsOn: aBpmProcessInstance].

	self isMerging 
	ifTrue: [self incomingTransitionsAreDone "all path has been synchronized ?"
				ifTrue: [	isClosed := true.
							aBpmProcessInstance finalizeGateway: self.
							aBpmProcessInstance generateNextTransitionsFrom: self]
	].