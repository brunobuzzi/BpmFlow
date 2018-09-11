outbox
createOutboxFor: aBpmEnvironment
	"The receiver create <aBpmUserOutbox> for the environment <aBpmEnvironment>"

	^outboxes at: aBpmEnvironment name put: (BpmUserOutbox newMainOutboxFor: self)