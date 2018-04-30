inform
onFinalizationIsInformed: aBpmRole
	"Answer whether or not <aBpmRole> must informed on finalization action"

	(informTo includesKey: aBpmRole) ifFalse: [^false].

	^(informTo at: aBpmRole) identityIncludes: #finalization