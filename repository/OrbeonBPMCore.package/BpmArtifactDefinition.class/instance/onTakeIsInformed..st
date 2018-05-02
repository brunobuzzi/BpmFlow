inform
onTakeIsInformed: aBpmRole
	"Answer whether or not <aBpmRole> must informed on take action"

	(informTo includesKey: aBpmRole) ifFalse: [^false].

	^(informTo at: aBpmRole) identityIncludes: #take