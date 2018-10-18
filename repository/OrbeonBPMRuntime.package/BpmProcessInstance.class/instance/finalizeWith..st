execution
finalizeWith: aBpmEndEventInstance
	"The receiver is finalized with the end event <aBpmEndEventInstance>"

	"This close possible open Event Gateways such as <BpmEventBasedGateway> <BpmExclusiveEventBasedGateway> <BpmParallelEventBasedGateway>.
	Depending on the event gateway configuration is could be open when the process is finalized (see class documentation of gateways instances)"
	(runningGateways select: [:eachGateway | eachGateway isEventGateway]) do: [:eachGateway | self finalizeGateway: eachGateway].
 
	^endEvents at: aBpmEndEventInstance getDefinitionName put: aBpmEndEventInstance