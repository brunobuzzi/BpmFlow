execution
pauseProcess: aBpmUser
	"The receiver switch the <state> to <paused>"

	^states add: (BpmPausedState newFor: self user: aBpmUser)