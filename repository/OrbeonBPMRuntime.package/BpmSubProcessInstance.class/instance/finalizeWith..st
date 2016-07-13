running
finalizeWith: aBpmEndEventInstance
	"The receiver is finalized with the end event <aBpmEndEventInstance>"

	super finalizeWith: aBpmEndEventInstance.

	parentProcess generateNextTransitionsFrom: creatorTask "the parent process resume it's execution"