outbox
destroyOutboxFor: aBpmEnvironment
	"The receiver create <aBpmUserInbox> for the environment <aBpmEnvironment>"

	^outboxes removeKey: aBpmEnvironment name ifAbsent: [NoSuchUserBoxForInEnvironmentException signal: 'No Outbox for environment named [', aBpmEnvironment name, ']']