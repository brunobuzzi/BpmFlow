inform
onUntakeIsInformed: aBpmRole
	"Answer whether or not <aBpmRole> must informed on untake action"

	(informTo includesKey: #untake) ifFalse: [^false].

	^(informTo at: #untake) identityIncludes: aBpmRole