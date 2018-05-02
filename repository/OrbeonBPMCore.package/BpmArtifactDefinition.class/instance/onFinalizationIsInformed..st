inform
onFinalizationIsInformed: aBpmRole
	"Answer whether or not <aBpmRole> must informed on finalization action"

	(informTo includesKey: #finalization) ifFalse: [^false].

	^(informTo at: #finalization) identityIncludes: aBpmRole