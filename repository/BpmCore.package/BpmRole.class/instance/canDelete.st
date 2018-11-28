other
canDelete
	"Answer whether or not the receiver can be deleted from the system"

	^tasks isEmpty and: [users isEmpty]