other
setLoop: aStringBlock
	"The receiver set the loop condition"

	loopCondition := BpmBlockCode newFromBlock: aStringBlock for: self