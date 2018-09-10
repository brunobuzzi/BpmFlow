outbox
getOutboxFor: aBpmEnvironment

	^outboxes at: aBpmEnvironment name ifAbsent: [NoSuchUserBoxForInEnvironmentException signal: 'No Outbox for environment named [', aBpmEnvironment name, ']']