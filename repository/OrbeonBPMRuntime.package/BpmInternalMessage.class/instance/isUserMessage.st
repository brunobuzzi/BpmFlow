message
isUserMessage

	category ifNil: [^false].

	^category isUserMessage