other
setLoop: aStringBlock
	"The receiver set the loop condition"

	loopCondition := BpmCodeCondition newFromBlock: aStringBlock for: self