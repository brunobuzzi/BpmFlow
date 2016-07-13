performers
canCloseAndSendPerformer: aBpmUser
	"Answer whether or not the user <aBpmUser> can close and send the receiver"

	^self innerTaskHasIsPendingBy:  aBpmUser