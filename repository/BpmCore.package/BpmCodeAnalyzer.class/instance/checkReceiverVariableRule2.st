code analyzer
checkReceiverVariableRule2
	"All basic receivers (receiver isVariable) MUST send message only to Block argument.
	If a message is sent to a <variable receiver> and this <variable receiver> is not the block argument then it can be malicious code or an error"
	| atomicMessages argumentName |

	"<atomicMessages> MUST have the receiver equal to Block argument"
	atomicMessages := parsedNode allChildren select: [:each | each isMessage and: [each receiver isVariable]].

	(parsedNode arguments size = 1) ifFalse: [^self]."if arguments size is not correct --> we abort the following checks"

	argumentName := parsedNode arguments last name. "the name of the Block argument ('each', 'proc' or whatever)"

	(atomicMessages select: [:each | 
			(each receiver name ~= argumentName) "sending a message to anObject different from Block argument ?"
			and:[(self getBasicClasses includes: each receiver name) not "sending message to basic objects ? Time/Date/TimeStamp"
					or:[(self getBasicSelectorsForBasicClasses includes: each selector) not]]]) 
	do: [:each | self addBlockWarning: 'Message is sent to object [', each receiver name, '] that is NOT the argument of the Block or it is a forbidden message [', each selector, '].' ]