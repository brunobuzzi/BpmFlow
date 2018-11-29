testing
isMessageNode
	"Answer whether or not the receiver is a -Message- type"

	^(self valueOf: 'trigger' ifAbsent: [^false]) = 'Message'