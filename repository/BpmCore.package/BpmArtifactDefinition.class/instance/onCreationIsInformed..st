inform
onCreationIsInformed: aBpmRole
	"Answer whether or not <aBpmRole> must informed on creation action"

	(informTo includesKey: #creation) ifFalse: [^false].

	^(informTo at: #creation) identityIncludes: aBpmRole