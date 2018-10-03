users
unregisterUser: aBpmUser
	"The user <aBpmUser> is unregistered from the receiver and is ungranted from all roles of the receiver "

	(users includesKey: aBpmUser username) ifFalse: [^self].

	"<aBpmUser> is ungranted from all roles beloging to the receiver"
	(aBpmUser rolesIn: self) do: [:eachRole | eachRole ungrantUser: aBpmUser].

	aBpmUser destroyInboxFor: self.
	aBpmUser destroyOutboxFor: self.
	^users removeKey: aBpmUser username ifAbsent: []