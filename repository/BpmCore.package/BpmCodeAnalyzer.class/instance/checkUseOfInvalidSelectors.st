code analyzer
checkUseOfInvalidSelectors

	isValidSelectorsEnabled ifFalse: [^self].

	(self getReferencedSelectors reject: [:each | self getValidSelectors includes: each]) do: [:each | self addBlockWarning: 'Invalid selector used [', each , ']']