inform
onCreationIsInformed: aBpmRole
	"Answer whether or not <aBpmRole> must informed on creation action"

	(informTo includesKey: aBpmRole) ifFalse: [^false].

	^(informTo at: aBpmRole) identityIncludes: #creation