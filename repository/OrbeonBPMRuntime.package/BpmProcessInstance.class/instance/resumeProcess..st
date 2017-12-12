execution
resumeProcess: aBpmUser
	"The receiver switch the <state> to <running>"

	^states add: (BpmRunningState newFor: self user: aBpmUser)