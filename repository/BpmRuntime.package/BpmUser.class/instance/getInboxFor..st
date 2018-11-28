inbox
getInboxFor: aBpmEnvironment

	^inboxes at: aBpmEnvironment name ifAbsent: [NoSuchUserBoxForInEnvironmentException signal: 'No Inbox for environment named [', aBpmEnvironment name, ']']