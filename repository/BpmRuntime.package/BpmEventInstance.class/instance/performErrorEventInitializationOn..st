double dispatch
performErrorEventInitializationOn: aBpmProcessInstance
	"The receiver perform the creation operation in the process instance <aBpmProcessInstance>.
	This operatoin initialize the receiver inside the process <aBpmProcessInstance>"

	(definition errorCode = 1)
	ifTrue: [].

	(definition errorCode = 2)
	ifTrue: [self generateNextRunningTransitions].