roles
removeRole: aBpmRole ifAbsent: aBlock
	"The receiver remove <aBpmRole> from <roles> collection.
	Now the user is ungranted to <aBpmRole> tasks and assignments"

	^roles remove: aBpmRole ifAbsent: aBlock