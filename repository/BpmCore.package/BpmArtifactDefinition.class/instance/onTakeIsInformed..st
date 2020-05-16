inform
onTakeIsInformed: aBpmRole
	"Answer whether or not <aBpmRole> must informed on take action"

	(informTo includesKey: #take) ifFalse: [^false].

	^(informTo at: #take) identityIncludes: aBpmRole