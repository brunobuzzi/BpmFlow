code analyzer
analyze

	parser isBlock ifFalse: [^self addBlockWarning: 'Condition is NOT a Block'; yourself].

	self checkOneArgumentBlockRule; "check the block has only one argument"
		checkReceiverVariableRule; "check that all receivers are the block argument or a basic class (Date, Time, TimeStamp)"
		checkReceiverVariableMessagesRule