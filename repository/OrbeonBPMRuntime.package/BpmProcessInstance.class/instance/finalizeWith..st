execution
finalizeWith: aBpmEndEventInstance
	"The receiver is finalized with the end event <aBpmEndEventInstance>"

	^endEvents at: aBpmEndEventInstance getDefinitionName put: aBpmEndEventInstance