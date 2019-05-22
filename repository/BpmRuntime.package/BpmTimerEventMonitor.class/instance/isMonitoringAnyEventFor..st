other
isMonitoringAnyEventFor: aBpmProcessDefinition
	"Answer whether or not the receiver has any event belonging to <aBpmProcessDefinition>"

	^(monitoredEvents select: [:each | each processDefinition == aBpmProcessDefinition]) notEmpty 
		or: [((monitoredProcessDefinitions at: aBpmProcessDefinition applicationName ifAbsent: [Dictionary new]) at: aBpmProcessDefinition processName ifAbsent: [#()]) notEmpty]