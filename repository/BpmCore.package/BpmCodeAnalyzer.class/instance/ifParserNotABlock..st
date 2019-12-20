code analyzer
ifParserNotABlock: handler

	parsedNode isBlock ifFalse: [^handler value].