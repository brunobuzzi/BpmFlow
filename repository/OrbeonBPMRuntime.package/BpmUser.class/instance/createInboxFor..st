inbox
createInboxFor: aBpmEnvironment
	"The receiver create <aBpmUserInbox> for the environment <aBpmEnvironment>"

	^inboxes at: aBpmEnvironment name put: (BpmUserInbox newMainInboxFor: self)