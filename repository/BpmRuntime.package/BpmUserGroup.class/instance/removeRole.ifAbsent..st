roles
removeRole: aBpmRole ifAbsent: aBlock

	aBpmRole removeGroup: self.

	^roles remove: aBpmRole ifAbsent: aBlock