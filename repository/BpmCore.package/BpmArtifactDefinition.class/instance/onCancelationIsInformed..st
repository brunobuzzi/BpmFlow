inform
onCancelationIsInformed: aBpmRole
	"Answer whether or not <aBpmRole> must informed on cancelation action"

	(informTo includesKey: #cancelation) ifFalse: [^false].

	^(informTo at: #cancelation) identityIncludes: aBpmRole