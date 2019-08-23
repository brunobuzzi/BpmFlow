loop
evaluateLoopIn: aBpmProcessInstance
	"The receiver evaluate the loop block.
	If answer <true> --> do another iteration.
	if answer <false> --> do nothing "

	^loop evaluateLoopIn: aBpmProcessInstance