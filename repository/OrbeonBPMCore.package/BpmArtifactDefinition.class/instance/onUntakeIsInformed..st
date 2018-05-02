inform
onUntakeIsInformed: aBpmRole
	"Answer whether or not <aBpmRole> must informed on untake action"

	(informTo includesKey: aBpmRole) ifFalse: [^false].

	^(informTo at: aBpmRole) identityIncludes: #untake