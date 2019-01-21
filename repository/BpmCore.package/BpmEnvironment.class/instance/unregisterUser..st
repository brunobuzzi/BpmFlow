users
unregisterUser: aBpmUser
	"The user <aBpmUser> is unregistered from the receiver and is ungranted from all roles of the receiver "

	(users includesKey: aBpmUser username) ifFalse: [^self].

	"<aBpmUser> is ungranted from all roles beloging to the receiver"
	(aBpmUser rolesIn: self) do: [:eachRole | eachRole ungrantUser: aBpmUser].

	aBpmUser destroyInboxFor: self.
	aBpmUser destroyOutboxFor: self.

	aBpmUser basicRemoveEnvironment: self ifAbsent: [ImproperBpmOperationException signal: 'User [', aBpmUser username , '] is not present in this Environment'].

	^users removeKey: aBpmUser username ifAbsent: [ImproperBpmOperationException signal: 'User [', aBpmUser username , '] is not present in this Environment']