other
analyze

	parser isBlock ifFalse: [^self addBlockWarning: 'Condition is NOT a Block'; yourself].

	self checkTwoArgumentBlockRule.