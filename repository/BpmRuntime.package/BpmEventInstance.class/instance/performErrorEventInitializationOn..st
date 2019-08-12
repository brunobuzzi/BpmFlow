double dispatch type
performErrorEventInitializationOn: aBpmProcessInstance
	"The receiver perform the creation operation in the process instance <aBpmProcessInstance>.
	This operation initialize the receiver inside the process <aBpmProcessInstance>.
	The attached task can be a regular task or a subprocess task"

	attachedTask ifNil: [ImproperBpmOperationException signal: 'Errors Event are always attached to a Task'].

	(self errorCode = 1) "task assignment keep running and error event generate next transitions"
	ifTrue: [^self generateNextRunningTransitions].

	(self errorCode = 2) "cancel assignment and error event generate next transitions"
	ifTrue: [attachedTask handleErrorCodeTwoWith: self.
			^self generateNextRunningTransitions].

	(self errorCode = 9) "cancel the entire process"
	ifTrue: [process abortProcess: nil.
			process currentState isConfirmed: true.
			^process confirmAbortion.
	].

	^ImproperBpmOperationException signal: 'Supported Codes for Error Events are [1, 2 or 9]'