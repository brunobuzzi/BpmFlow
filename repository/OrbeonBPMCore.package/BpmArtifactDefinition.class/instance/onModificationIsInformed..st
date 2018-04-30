inform
onModificationIsInformed: aBpmRole
	"Answer whether or not <aBpmRole> must informed on modification action"

	(informTo includesKey: aBpmRole) ifFalse: [^false].

	^(informTo at: aBpmRole) identityIncludes: #modification