ast queries
getTopReceiverFrom: aRBMessageNode
	"Answer the top receiver in the message node <aRBMessageNode> that is not a message"
	| currentReceiver |

	currentReceiver := aRBMessageNode receiver.
	[currentReceiver isMessage] whileTrue: [currentReceiver := currentReceiver receiver].

	^currentReceiver