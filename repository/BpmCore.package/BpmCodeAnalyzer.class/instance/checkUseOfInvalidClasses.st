code analyzer
checkUseOfInvalidClasses
	"The receiver check if any invalid class is referenced in the parsed code <parsedNode>"

	isValidClassesEnabled ifFalse: [^self].

	(self getReferencedClasses reject: [:each | validClasses includes: each]) do: [:each | self addBlockWarning: 'Invalid class used [', each , ']']