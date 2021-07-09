events monitor
getLastProcessCreationTimeFor: aBpmProcessDefinition ifNoneExecution: aBlock
	"The receiver answer <aTimeStamp> of the last process creation executed for <aBpmProcessDefinition>.
	If there is NO process creation then answer a <aTimeStamp> with the oldest possible value"

	^eventsMonitor getLastProcessCreationTimeFor: aBpmProcessDefinition ifNoneExecution: aBlock