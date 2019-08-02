double dispatch
performErrorEventInitializationOn: aBpmProcessInstance
	"The receiver perform the creation operation in the process instance <aBpmProcessInstance>.
	This operatoin initialize the receiver inside the process <aBpmProcessInstance>."

	attachedTask ifNil: [ImproperBpmOperationException signal: 'Errors Event are always attached to a Task'].

	(self errorCode = 1) "task assignment keep running and error event generate next transitions"
	ifTrue: [^self generateNextRunningTransitions].

	(self errorCode = 2) "cancel assignment and error event generate next transitions"
	ifTrue: [(BpmCancelAssignmentOperation on: attachedTask assignment by: attachedTask assignment user) 
				canceller: self;
				executeIt.
			^self generateNextRunningTransitions].

	(self errorCode = 9) "cancel the entire process"
	ifTrue: [process abortProcess: nil.
			process currentState isConfirmed: true.
			process confirmAbortion.
	].