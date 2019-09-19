other
evaluateLoopIn: aBpmProcessInstance
	"The receiver evaluate the loop block.
	The BPM Process will create the numbers of <BpmTaskInstance> obtained from the block evaluation (the block must answer an integer)."

	^loopCardinalityBock evaluateConditionIn: aBpmProcessInstance