outbox
createOutboxFor: aBpmEnvironment
	"The receiver create <aBpmUserOutbox> for the environment <aBpmEnvironment>"

	^inboxes at: aBpmEnvironment name put: (BpmUserOutbox newMainOutboxFor: self)