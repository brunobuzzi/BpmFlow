other
analyze

	self ifParserNotABlock: [^self addDefaultNonBlockWarning].

	self checkTwoArgumentBlockRule;
		checkUseOfInvalidClasses;
		checkUseOfInvalidSelectors.