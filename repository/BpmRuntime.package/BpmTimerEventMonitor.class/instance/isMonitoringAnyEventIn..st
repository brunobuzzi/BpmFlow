other
isMonitoringAnyEventIn: anApplication
	"Answer whether or not the receiver has any event belonging to <anApplication>"

	^(monitoredEvents select: [:each | each application == anApplication]) notEmpty 
		or: [(monitoredProcessDefinitions at: anApplication applicationName ifAbsent: [#()]) anySatisfy: [:monitoredProcesses | monitoredProcesses notEmpty] ]