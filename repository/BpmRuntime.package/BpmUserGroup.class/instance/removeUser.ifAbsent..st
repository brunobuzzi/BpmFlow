users
removeUser: aBpmUser ifAbsent: aBlock

	aBpmUser removeFromGroup: self.

	^users remove: aBpmUser ifAbsent: aBlock