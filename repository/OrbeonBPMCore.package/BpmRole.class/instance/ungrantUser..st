responsibility
ungrantUser: aBpmUser

	users removeKey: aBpmUser username ifAbsent: [].

	^aBpmUser removeRole: self