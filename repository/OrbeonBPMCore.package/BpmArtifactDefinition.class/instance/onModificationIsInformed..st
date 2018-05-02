inform
onModificationIsInformed: aBpmRole
	"Answer whether or not <aBpmRole> must informed on modification action"

	(informTo includesKey: #modification) ifFalse: [^false].

	^(informTo at: #modification) identityIncludes: aBpmRole