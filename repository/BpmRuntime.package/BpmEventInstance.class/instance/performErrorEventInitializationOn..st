double dispatch
performErrorEventInitializationOn: aBpmProcessInstance
	"The receiver perform the creation operation in the process instance <aBpmProcessInstance>.
	This operatoin initialize the receiver inside the process <aBpmProcessInstance>."

	attachedTask ifNil: [ImproperBpmOperationException signal: 'Errors Event are always attached to a Task'].

	(self errorCode = 1)
	ifTrue: ["self cancelParentTask (orbeon task | seaside task)"].

	(self errorCode = 2)
	ifTrue: [^self generateNextRunningTransitions].

	(self errorCode = 9) 
	ifTrue: ["Cancel Process"
			process abortProcess: nil.
			^process currentState isConfirmed: true.
	].