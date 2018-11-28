execution
abortProcess: aBpmUser
	"The receiver switch the <state> to <aborted>"

	^states add: (BpmAbortedState newFor: self user: aBpmUser)