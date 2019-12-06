code analyzer
ifParserNotABlock: handler

	parser isBlock ifFalse: [^handler value].