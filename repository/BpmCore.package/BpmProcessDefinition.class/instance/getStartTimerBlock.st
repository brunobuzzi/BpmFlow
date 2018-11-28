timer
getStartTimerBlock
	"Answer <aExecBlock> used to active the creation of a new instance.
	<aExecBlock> must answer <true> or <false>"

	^self getStartEvent getTimerBlock