other
analyze

	self ifParserNotABlock: [^self addBlockWarning: 'Condition is NOT a Block'; yourself].

	self checkTwoArgumentBlockRule;
		checkUseOfInvalidClasses