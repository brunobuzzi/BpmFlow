other
getUsersNamesFor: aString

	^(self getAvailableUsers select: [:user | ('*', aString, '*') match: user username]) collect: [:user | user username]