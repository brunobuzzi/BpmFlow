query variables
queryBlock
	"The receiver answer <aBlock> to be used as an arugment of a #select: message.
	See issue: #1029"
	| blockString queryBlock |

	blockString := self searchValueAt: 'process-condition'.
	self removeValueNamed: 'queryBlock-error'.

	(blockString isNil or: [blockString isEmpty]) ifTrue: [^[:each | true]]. "empty condition --> all collection is going to be selected"

	[queryBlock := blockString evaluate] on: Error do: [:ex| ^self addValue: ex description named: 'queryBlock-error']. "invalid Smalltalk expression"
	
	queryBlock isBlock ifFalse: [^self addValue: 'Invalid Block' named: 'queryBlock-error']. "a valid Smalltalk expression but is not <aBlock>"

	^queryBlock