users
unregisterUser: aBpmUser ifAbsent: aBlock

	aBpmUser unregisterFromGroup: self.

	^users remove: aBpmUser ifAbsent: aBlock