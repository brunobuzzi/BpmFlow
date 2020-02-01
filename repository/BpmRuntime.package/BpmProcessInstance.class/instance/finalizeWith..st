execution
finalizeWith: aBpmEventInstance
	"The receiver is finalized with the end event <aBpmEventInstance>"

	"This close possible open Event Gateways such as <BpmEventBasedGateway> <BpmExclusiveEventBasedGateway> <BpmParallelEventBasedGateway>.
	Depending on the event gateway configuration it could be open when the process is finalized (see class documentation of gateways instances)"
	(runningGateways select: [:eachGateway | eachGateway isGatewayForEvents]) do: [:eachGateway | self finalizeGateway: eachGateway].
 
	(endEvents includesKey: aBpmEventInstance getDefinitionName) ifFalse: [endEvents at: aBpmEventInstance getDefinitionName put: OrderedCollection new].

	self isRunning ifFalse: [states add: (BpmFinishedState newFor: self)].

	^(endEvents at: aBpmEventInstance getDefinitionName) add: aBpmEventInstance