execution
finalizeWith: aBpmEventInstance
	"The receiver is finalized with the end event <aBpmEventInstance>"

	"This close possible open Event Gateways such as <BpmEventBasedGateway> <BpmExclusiveEventBasedGateway> <BpmParallelEventBasedGateway>.
	Depending on the event gateway configuration it could be open when the process is finalized (see class documentation of gateways instances)"
	(runningGateways select: [:eachGateway | eachGateway isEventGateway]) do: [:eachGateway | self finalizeGateway: eachGateway].
 
	(endEvents includesKey: aBpmEventInstance getDefinitionName) ifFalse: [endEvents at: aBpmEventInstance getDefinitionName put: OrderedCollection new].

	^(endEvents at: aBpmEventInstance getDefinitionName) add: aBpmEventInstance