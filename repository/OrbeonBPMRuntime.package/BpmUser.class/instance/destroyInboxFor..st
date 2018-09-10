inbox
destroyInboxFor: aBpmEnvironment
	"The receiver create <aBpmUserInbox> for the environment <aBpmEnvironment>"

	^inboxes removeKey: aBpmEnvironment name ifAbsent: [NoSuchUserBoxForInEnvironmentException signal: 'No Inbox for environment named [', aBpmEnvironment name, ']']